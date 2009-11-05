class Tnt::TntService
        
  KEY                = "VeryTopSecretKey" # ;-)
  LCID_DUTCH         = 1043
  LCID_ENGLISH       = 1033
  
  PAGE_MODES  = [ :double_sided, :single_sided ]  
  COLOR_MODES = [ :greyscale, :full_color ]
  
  attr_reader :default_lcid, :webservice_url, :transfer_host, :transfer_port, :licence_nr, :customer_nr, :client_win_id
  attr_writer :default_lcid, :webservice_url, :transfer_host, :transfer_port, :licence_nr, :customer_nr, :client_win_id
  
  # Initialize TntService object with the following required fields:
  # <tt>licence_nr</tt>: The licence number provided by TNT to you
  # <tt>customer_nr</tt>: The customer number provided by TNT to you
  # You can also provide the following additional options
  # <tt>:client_win_id</tt>: A unique identifer fot this client, generated automatically if left blank.
  # <tt>:default_lcid</tt>: Default language to use. Defaults to DUTCH
  # <tt>:webservice_url</tt>: The url of the tnt webservice
  # <tt>:transfer_host</tt>: The host used to transfer PS data to
  # <tt>:transfer_port</tt>: The port used to transfer PS data to
  def initialize licence_nr, customer_nr, options={}    
    self.licence_nr    = licence_nr
    self.customer_nr   = customer_nr
    
    self.client_win_id  = options[:client_win_id]  || Tnt::TntService.generate_client_win_id
    self.default_lcid   = options[:default_lcid]   || LCID_DUTCH
    self.webservice_url = options[:webservice_url] || "https://www.tntfacturenpost.nl/tnt/queueservice/queueservice.asmx"
    self.transfer_host  = options[:transfer_host]  || "145.78.25.99"
    self.transfer_port  = options[:transfer_port]  ||  2112
    
    @webservice = Tnt::EasyInvoiceQueueServiceSoap.new(self.webservice_url)    
  end
  
  # Puts this instance into testing mode
  def test_mode!
    self.extend(Tnt::TntTest)
  end
  
  # Puts this instance into development mode
  def development_mode!
    self.extend(Tnt::TntDevelopment)
  end
        
  # Returns page mode variable (:double_sided or :single_sided)
  def get_page_mode
    PAGE_MODES[ @webservice.getPageMode( Tnt::GetPageMode.new(print_client_id_ext) ).getPageModeResult ]
  end
  
  # Returns color mode variable (:full_color or :greyscale)
  def get_color_mode
    COLOR_MODES[ @webservice.getColorMode( Tnt::GetColorMode.new(print_client_id_ext) ).getColorModeResult ]
  end
  
  # Returns the requested system message
  def get_system_message message
    @webservice.getSystemMessageExt( Tnt::GetSystemMessageExt.new(print_client_id_ext,message) ).getSystemMessageExtResult
  end
  
  # Sets page mode and color mode variables on the server
  def set_page_and_color_mode page_mode, color_mode
    @webservice.setPageMode( Tnt::SetPageMode.new(print_client_id_ext, (page_mode == :single_sided), (color_mode == :full_color) ) )
  end
  
  # Checks if the entered information is valid and a successful connection can be made. Returns true or false.
  def validate
    get_system_message("connection_test_msg").msg == "OK"
  end
  
  # Raises if not validated
  def validate!
    raise "The service connection parameters cannot be validated." unless validate
  end
  
  # Data is expected to be in PS format
  # Raises Timeout::Error on timeout
  def upload_print_file data, lcid=default_lcid, timeout=100
    page_count = Tnt::PostScriptTools.count_pages_in_ps_string(data)    
    raise "Maximum amount of pages is 1000 per batch." if page_count > 1000    
    Timeout::timeout(timeout) do
      s = TCPSocket.open(transfer_host, transfer_port)
      s.write( customer_nr.ljust(50) + licence_nr.ljust(50) + lcid.to_s.ljust(40) + page_count.to_s.ljust(40) + Zlib::Deflate.deflate(data) )
      s.close
    end
  end
  
  # This method does not work as the data is not parsed afterwards. However I did implement it since it uses HTTPS and HMAC so it would be preferred...
  # def secure_upload_print_file data, lcid=default_lcid
  #   page_count = Tnt::PostScriptTools.count_pages_in_ps_string(data)
  #   @webservice.secureUploadPrintFile( Tnt::SecureUploadPrintFile.new(print_client_id_ext, Base64.encode64(data), Base64.encode64(hmac_for(data)), page_count ) )
  # end
  
  # Generate a random UID number string in the following format: XXXXX-XXX-XXXXXX-XXXXX
  def self.generate_client_win_id
    [rand(99999).to_s.rjust(5,"0"), rand(999).to_s.rjust(3,"0"), rand(9999999).to_s.rjust(7,"0"), rand(99999).to_s.rjust(5,"0")].join('-')
  end
  
  private 
  
  # Determine SHA256 HMAC for data string
  def hmac_for data
    HMAC::SHA256.digest(KEY, data)
  end
  
  def client_file_array
    Tnt::ArrayOfClientFile.new( [Tnt::ClientFile.new("Ruby TntService","1.0")] )
  end
  
  def print_client_id
    Tnt::PrintClientId.new(licence_nr, customer_nr, client_file_array)
  end
  
  def print_client_id_ext lcid=default_lcid
    Tnt::PrintClientIdExt.new(licence_nr, customer_nr, client_win_id, lcid, client_file_array)
  end
  
end