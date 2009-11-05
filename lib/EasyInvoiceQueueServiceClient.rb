#!/usr/bin/env ruby
require 'defaultDriver.rb'

module Tnt

endpoint_url = ARGV.shift
obj = EasyInvoiceQueueServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   UploadPrintFile(parameters)
#
# ARGS
#   parameters      UploadPrintFile - {http://www.pepto.se/webservices/}UploadPrintFile
#
# RETURNS
#   parameters      UploadPrintFileResponse - {http://www.pepto.se/webservices/}UploadPrintFileResponse
#
parameters = nil
puts obj.uploadPrintFile(parameters)

# SYNOPSIS
#   UploadPrintFileLCID(parameters)
#
# ARGS
#   parameters      UploadPrintFileLCID - {http://www.pepto.se/webservices/}UploadPrintFileLCID
#
# RETURNS
#   parameters      UploadPrintFileLCIDResponse - {http://www.pepto.se/webservices/}UploadPrintFileLCIDResponse
#
parameters = nil
puts obj.uploadPrintFileLCID(parameters)

# SYNOPSIS
#   SecureUploadPrintFile(parameters)
#
# ARGS
#   parameters      SecureUploadPrintFile - {http://www.pepto.se/webservices/}SecureUploadPrintFile
#
# RETURNS
#   parameters      SecureUploadPrintFileResponse - {http://www.pepto.se/webservices/}SecureUploadPrintFileResponse
#
parameters = nil
puts obj.secureUploadPrintFile(parameters)

# SYNOPSIS
#   GetSystemNews(parameters)
#
# ARGS
#   parameters      GetSystemNews - {http://www.pepto.se/webservices/}GetSystemNews
#
# RETURNS
#   parameters      GetSystemNewsResponse - {http://www.pepto.se/webservices/}GetSystemNewsResponse
#
parameters = nil
puts obj.getSystemNews(parameters)

# SYNOPSIS
#   GetStatus(parameters)
#
# ARGS
#   parameters      GetStatus - {http://www.pepto.se/webservices/}GetStatus
#
# RETURNS
#   parameters      GetStatusResponse - {http://www.pepto.se/webservices/}GetStatusResponse
#
parameters = nil
puts obj.getStatus(parameters)

# SYNOPSIS
#   GetHelpExt(parameters)
#
# ARGS
#   parameters      GetHelpExt - {http://www.pepto.se/webservices/}GetHelpExt
#
# RETURNS
#   parameters      GetHelpExtResponse - {http://www.pepto.se/webservices/}GetHelpExtResponse
#
parameters = nil
puts obj.getHelpExt(parameters)

# SYNOPSIS
#   GetSystemMessage(parameters)
#
# ARGS
#   parameters      GetSystemMessage - {http://www.pepto.se/webservices/}GetSystemMessage
#
# RETURNS
#   parameters      GetSystemMessageResponse - {http://www.pepto.se/webservices/}GetSystemMessageResponse
#
parameters = nil
puts obj.getSystemMessage(parameters)

# SYNOPSIS
#   GetSystemMessageExt(parameters)
#
# ARGS
#   parameters      GetSystemMessageExt - {http://www.pepto.se/webservices/}GetSystemMessageExt
#
# RETURNS
#   parameters      GetSystemMessageExtResponse - {http://www.pepto.se/webservices/}GetSystemMessageExtResponse
#
parameters = nil
puts obj.getSystemMessageExt(parameters)

# SYNOPSIS
#   GetTexts(parameters)
#
# ARGS
#   parameters      GetTexts - {http://www.pepto.se/webservices/}GetTexts
#
# RETURNS
#   parameters      GetTextsResponse - {http://www.pepto.se/webservices/}GetTextsResponse
#
parameters = nil
puts obj.getTexts(parameters)

# SYNOPSIS
#   GetLanguages(parameters)
#
# ARGS
#   parameters      GetLanguages - {http://www.pepto.se/webservices/}GetLanguages
#
# RETURNS
#   parameters      GetLanguagesResponse - {http://www.pepto.se/webservices/}GetLanguagesResponse
#
parameters = nil
puts obj.getLanguages(parameters)

# SYNOPSIS
#   SetPageMode(parameters)
#
# ARGS
#   parameters      SetPageMode - {http://www.pepto.se/webservices/}SetPageMode
#
# RETURNS
#   parameters      SetPageModeResponse - {http://www.pepto.se/webservices/}SetPageModeResponse
#
parameters = nil
puts obj.setPageMode(parameters)

# SYNOPSIS
#   GetPageMode(parameters)
#
# ARGS
#   parameters      GetPageMode - {http://www.pepto.se/webservices/}GetPageMode
#
# RETURNS
#   parameters      GetPageModeResponse - {http://www.pepto.se/webservices/}GetPageModeResponse
#
parameters = nil
puts obj.getPageMode(parameters)

# SYNOPSIS
#   GetColorMode(parameters)
#
# ARGS
#   parameters      GetColorMode - {http://www.pepto.se/webservices/}GetColorMode
#
# RETURNS
#   parameters      GetColorModeResponse - {http://www.pepto.se/webservices/}GetColorModeResponse
#
parameters = nil
puts obj.getColorMode(parameters)


endpoint_url = ARGV.shift
obj = EasyInvoiceQueueServiceSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   UploadPrintFile(parameters)
#
# ARGS
#   parameters      UploadPrintFile - {http://www.pepto.se/webservices/}UploadPrintFile
#
# RETURNS
#   parameters      UploadPrintFileResponse - {http://www.pepto.se/webservices/}UploadPrintFileResponse
#
parameters = nil
puts obj.uploadPrintFile(parameters)

# SYNOPSIS
#   UploadPrintFileLCID(parameters)
#
# ARGS
#   parameters      UploadPrintFileLCID - {http://www.pepto.se/webservices/}UploadPrintFileLCID
#
# RETURNS
#   parameters      UploadPrintFileLCIDResponse - {http://www.pepto.se/webservices/}UploadPrintFileLCIDResponse
#
parameters = nil
puts obj.uploadPrintFileLCID(parameters)

# SYNOPSIS
#   SecureUploadPrintFile(parameters)
#
# ARGS
#   parameters      SecureUploadPrintFile - {http://www.pepto.se/webservices/}SecureUploadPrintFile
#
# RETURNS
#   parameters      SecureUploadPrintFileResponse - {http://www.pepto.se/webservices/}SecureUploadPrintFileResponse
#
parameters = nil
puts obj.secureUploadPrintFile(parameters)

# SYNOPSIS
#   GetSystemNews(parameters)
#
# ARGS
#   parameters      GetSystemNews - {http://www.pepto.se/webservices/}GetSystemNews
#
# RETURNS
#   parameters      GetSystemNewsResponse - {http://www.pepto.se/webservices/}GetSystemNewsResponse
#
parameters = nil
puts obj.getSystemNews(parameters)

# SYNOPSIS
#   GetStatus(parameters)
#
# ARGS
#   parameters      GetStatus - {http://www.pepto.se/webservices/}GetStatus
#
# RETURNS
#   parameters      GetStatusResponse - {http://www.pepto.se/webservices/}GetStatusResponse
#
parameters = nil
puts obj.getStatus(parameters)

# SYNOPSIS
#   GetHelpExt(parameters)
#
# ARGS
#   parameters      GetHelpExt - {http://www.pepto.se/webservices/}GetHelpExt
#
# RETURNS
#   parameters      GetHelpExtResponse - {http://www.pepto.se/webservices/}GetHelpExtResponse
#
parameters = nil
puts obj.getHelpExt(parameters)

# SYNOPSIS
#   GetSystemMessage(parameters)
#
# ARGS
#   parameters      GetSystemMessage - {http://www.pepto.se/webservices/}GetSystemMessage
#
# RETURNS
#   parameters      GetSystemMessageResponse - {http://www.pepto.se/webservices/}GetSystemMessageResponse
#
parameters = nil
puts obj.getSystemMessage(parameters)

# SYNOPSIS
#   GetSystemMessageExt(parameters)
#
# ARGS
#   parameters      GetSystemMessageExt - {http://www.pepto.se/webservices/}GetSystemMessageExt
#
# RETURNS
#   parameters      GetSystemMessageExtResponse - {http://www.pepto.se/webservices/}GetSystemMessageExtResponse
#
parameters = nil
puts obj.getSystemMessageExt(parameters)

# SYNOPSIS
#   GetTexts(parameters)
#
# ARGS
#   parameters      GetTexts - {http://www.pepto.se/webservices/}GetTexts
#
# RETURNS
#   parameters      GetTextsResponse - {http://www.pepto.se/webservices/}GetTextsResponse
#
parameters = nil
puts obj.getTexts(parameters)

# SYNOPSIS
#   GetLanguages(parameters)
#
# ARGS
#   parameters      GetLanguages - {http://www.pepto.se/webservices/}GetLanguages
#
# RETURNS
#   parameters      GetLanguagesResponse - {http://www.pepto.se/webservices/}GetLanguagesResponse
#
parameters = nil
puts obj.getLanguages(parameters)

# SYNOPSIS
#   SetPageMode(parameters)
#
# ARGS
#   parameters      SetPageMode - {http://www.pepto.se/webservices/}SetPageMode
#
# RETURNS
#   parameters      SetPageModeResponse - {http://www.pepto.se/webservices/}SetPageModeResponse
#
parameters = nil
puts obj.setPageMode(parameters)

# SYNOPSIS
#   GetPageMode(parameters)
#
# ARGS
#   parameters      GetPageMode - {http://www.pepto.se/webservices/}GetPageMode
#
# RETURNS
#   parameters      GetPageModeResponse - {http://www.pepto.se/webservices/}GetPageModeResponse
#
parameters = nil
puts obj.getPageMode(parameters)

# SYNOPSIS
#   GetColorMode(parameters)
#
# ARGS
#   parameters      GetColorMode - {http://www.pepto.se/webservices/}GetColorMode
#
# RETURNS
#   parameters      GetColorModeResponse - {http://www.pepto.se/webservices/}GetColorModeResponse
#
parameters = nil
puts obj.getColorMode(parameters)




end
