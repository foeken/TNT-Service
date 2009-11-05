class Tnt::PostScriptTools
  
  # Counts the number of pages inside a PostScript file
  def self.count_pages_in_ps_string ps_string
    page_count = ps_string.scan("%%Page:").length    
    raise "No pages detected in PostScript data string!" unless page_count > 0    
    return page_count
  end
  
  # Counts the number of pages inside a PDF file
  def self.count_pages_in_pdf_string pdf_string
    return count_pages_in_ps_string( convert_pdf_string_to_ps_string(pdf_string) )
  end
  
  # Converts PDF string to a PostScript string using pdftops
  def self.convert_pdf_string_to_ps_string pdf_string
    temp_file = Tempfile.new('random')
    temp_file.print(pdf_string)
    temp_file.flush
    ps_string = `pdftops #{temp_file.path} -`
    temp_file.unlink
    return ps_string
  end
  
end