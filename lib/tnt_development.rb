# Extend a TNTService object with this module for development.
module Tnt
  module TntDevelopment
    def upload_print_file data, lcid=default_lcid, timeout=100
      page_count = Tnt::PostScriptTools.count_pages_in_ps_string(data)    
      raise "Maximum amount of pages is 1000 per batch." if page_count > 1000    
      print "------SENDING DATA TO TNT ------------\n"
    end 
  end
end