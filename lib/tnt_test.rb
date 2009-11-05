# Extend a TNTService object with this module for testing.
module Tnt
module TntTest
  
  # Forces a time out on the next call to #upload_print_file
  # This can be used to test the code that should handle the timeout.
  def force_timeout_on_next_call!
    @force_timeout = true
  end
  
  def upload_print_file data, lcid=default_lcid, timeout=100
    page_count = Tnt::PostScriptTools.count_pages_in_ps_string(data)    
    raise "Maximum amount of pages is 1000 per batch." if page_count > 1000    
    if @force_timeout
      @force_timeout = false
      # puts '[TNT SERVICE (test)] --- Timed Out! ---'
      raise Timeout::Error.new 
    else
      # puts '[TNT SERVICE (test)] --- Sent Data ---'
    end
  end
  
  def validate
    return true
  end
  
  def get_system_message message
    return "OK"
  end
    
end
end