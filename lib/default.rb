require 'xsd/qname'

module Tnt


# {http://www.pepto.se/webservices/}PrintClientId
#   licenceNumber - SOAP::SOAPString
#   customerNumber - SOAP::SOAPString
#   installationInfo - Tnt::ArrayOfClientFile
class PrintClientId
  attr_accessor :licenceNumber
  attr_accessor :customerNumber
  attr_accessor :installationInfo

  def initialize(licenceNumber = nil, customerNumber = nil, installationInfo = nil)
    @licenceNumber = licenceNumber
    @customerNumber = customerNumber
    @installationInfo = installationInfo
  end
end

# {http://www.pepto.se/webservices/}ArrayOfClientFile
class ArrayOfClientFile < ::Array
end

# {http://www.pepto.se/webservices/}ClientFile
#   fileName - SOAP::SOAPString
#   fileVersion - SOAP::SOAPString
class ClientFile
  attr_accessor :fileName
  attr_accessor :fileVersion

  def initialize(fileName = nil, fileVersion = nil)
    @fileName = fileName
    @fileVersion = fileVersion
  end
end

# {http://www.pepto.se/webservices/}StandardMessage
#   title - SOAP::SOAPString
#   msg - SOAP::SOAPString
#   link - SOAP::SOAPString
#   isEmpty - SOAP::SOAPBoolean
class StandardMessage
  attr_accessor :title
  attr_accessor :msg
  attr_accessor :link
  attr_accessor :isEmpty

  def initialize(title = nil, msg = nil, link = nil, isEmpty = nil)
    @title = title
    @msg = msg
    @link = link
    @isEmpty = isEmpty
  end
end

# {http://www.pepto.se/webservices/}PrintClientIdExt
#   licenceNumber - SOAP::SOAPString
#   customerNumber - SOAP::SOAPString
#   clientWinId - SOAP::SOAPString
#   lCID - SOAP::SOAPInt
#   installationInfo - Tnt::ArrayOfClientFile
class PrintClientIdExt
  attr_accessor :licenceNumber
  attr_accessor :customerNumber
  attr_accessor :clientWinId
  attr_accessor :lCID
  attr_accessor :installationInfo

  def initialize(licenceNumber = nil, customerNumber = nil, clientWinId = nil, lCID = nil, installationInfo = nil)
    @licenceNumber = licenceNumber
    @customerNumber = customerNumber
    @clientWinId = clientWinId
    @lCID = lCID
    @installationInfo = installationInfo
  end
end

# {http://www.pepto.se/webservices/}StandardMessageExt
#   title - SOAP::SOAPString
#   msg - SOAP::SOAPString
#   link - SOAP::SOAPString
#   isEmpty - SOAP::SOAPBoolean
#   isErrorMsg - SOAP::SOAPBoolean
class StandardMessageExt
  attr_accessor :title
  attr_accessor :msg
  attr_accessor :link
  attr_accessor :isEmpty
  attr_accessor :isErrorMsg

  def initialize(title = nil, msg = nil, link = nil, isEmpty = nil, isErrorMsg = nil)
    @title = title
    @msg = msg
    @link = link
    @isEmpty = isEmpty
    @isErrorMsg = isErrorMsg
  end
end

# {http://www.pepto.se/webservices/}UploadPrintFile
#   id - Tnt::PrintClientId
#   printFileData - SOAP::SOAPBase64
class UploadPrintFile
  attr_accessor :id
  attr_accessor :printFileData

  def initialize(id = nil, printFileData = nil)
    @id = id
    @printFileData = printFileData
  end
end

# {http://www.pepto.se/webservices/}UploadPrintFileResponse
#   uploadPrintFileResult - Tnt::StandardMessage
class UploadPrintFileResponse
  attr_accessor :uploadPrintFileResult

  def initialize(uploadPrintFileResult = nil)
    @uploadPrintFileResult = uploadPrintFileResult
  end
end

# {http://www.pepto.se/webservices/}UploadPrintFileLCID
#   id - Tnt::PrintClientId
#   printFileData - SOAP::SOAPBase64
#   lCID - SOAP::SOAPInt
class UploadPrintFileLCID
  attr_accessor :id
  attr_accessor :printFileData
  attr_accessor :lCID

  def initialize(id = nil, printFileData = nil, lCID = nil)
    @id = id
    @printFileData = printFileData
    @lCID = lCID
  end
end

# {http://www.pepto.se/webservices/}UploadPrintFileLCIDResponse
#   uploadPrintFileLCIDResult - Tnt::StandardMessage
class UploadPrintFileLCIDResponse
  attr_accessor :uploadPrintFileLCIDResult

  def initialize(uploadPrintFileLCIDResult = nil)
    @uploadPrintFileLCIDResult = uploadPrintFileLCIDResult
  end
end

# {http://www.pepto.se/webservices/}SecureUploadPrintFile
#   id - Tnt::PrintClientIdExt
#   printFileData - SOAP::SOAPBase64
#   hmac - SOAP::SOAPBase64
#   pageCount - SOAP::SOAPInt
class SecureUploadPrintFile
  attr_accessor :id
  attr_accessor :printFileData
  attr_accessor :hmac
  attr_accessor :pageCount

  def initialize(id = nil, printFileData = nil, hmac = nil, pageCount = nil)
    @id = id
    @printFileData = printFileData
    @hmac = hmac
    @pageCount = pageCount
  end
end

# {http://www.pepto.se/webservices/}SecureUploadPrintFileResponse
#   secureUploadPrintFileResult - Tnt::StandardMessageExt
class SecureUploadPrintFileResponse
  attr_accessor :secureUploadPrintFileResult

  def initialize(secureUploadPrintFileResult = nil)
    @secureUploadPrintFileResult = secureUploadPrintFileResult
  end
end

# {http://www.pepto.se/webservices/}GetSystemNews
#   id - Tnt::PrintClientId
class GetSystemNews
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.pepto.se/webservices/}GetSystemNewsResponse
#   getSystemNewsResult - Tnt::StandardMessage
class GetSystemNewsResponse
  attr_accessor :getSystemNewsResult

  def initialize(getSystemNewsResult = nil)
    @getSystemNewsResult = getSystemNewsResult
  end
end

# {http://www.pepto.se/webservices/}GetStatus
#   id - Tnt::PrintClientId
#   intLCID - SOAP::SOAPInt
class GetStatus
  attr_accessor :id
  attr_accessor :intLCID

  def initialize(id = nil, intLCID = nil)
    @id = id
    @intLCID = intLCID
  end
end

# {http://www.pepto.se/webservices/}GetStatusResponse
#   getStatusResult - Tnt::StandardMessage
class GetStatusResponse
  attr_accessor :getStatusResult

  def initialize(getStatusResult = nil)
    @getStatusResult = getStatusResult
  end
end

# {http://www.pepto.se/webservices/}GetHelpExt
#   id - Tnt::PrintClientIdExt
class GetHelpExt
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.pepto.se/webservices/}GetHelpExtResponse
#   getHelpExtResult - Tnt::StandardMessageExt
class GetHelpExtResponse
  attr_accessor :getHelpExtResult

  def initialize(getHelpExtResult = nil)
    @getHelpExtResult = getHelpExtResult
  end
end

# {http://www.pepto.se/webservices/}GetSystemMessage
#   id - Tnt::PrintClientId
#   messageTypeName - SOAP::SOAPString
class GetSystemMessage
  attr_accessor :id
  attr_accessor :messageTypeName

  def initialize(id = nil, messageTypeName = nil)
    @id = id
    @messageTypeName = messageTypeName
  end
end

# {http://www.pepto.se/webservices/}GetSystemMessageResponse
#   getSystemMessageResult - Tnt::StandardMessage
class GetSystemMessageResponse
  attr_accessor :getSystemMessageResult

  def initialize(getSystemMessageResult = nil)
    @getSystemMessageResult = getSystemMessageResult
  end
end

# {http://www.pepto.se/webservices/}GetSystemMessageExt
#   id - Tnt::PrintClientIdExt
#   messageTypeName - SOAP::SOAPString
class GetSystemMessageExt
  attr_accessor :id
  attr_accessor :messageTypeName

  def initialize(id = nil, messageTypeName = nil)
    @id = id
    @messageTypeName = messageTypeName
  end
end

# {http://www.pepto.se/webservices/}GetSystemMessageExtResponse
#   getSystemMessageExtResult - Tnt::StandardMessageExt
class GetSystemMessageExtResponse
  attr_accessor :getSystemMessageExtResult

  def initialize(getSystemMessageExtResult = nil)
    @getSystemMessageExtResult = getSystemMessageExtResult
  end
end

# {http://www.pepto.se/webservices/}GetTexts
#   lang - SOAP::SOAPInt
class GetTexts
  attr_accessor :lang

  def initialize(lang = nil)
    @lang = lang
  end
end

# {http://www.pepto.se/webservices/}GetTextsResponse
#   getTextsResult - SOAP::SOAPString
class GetTextsResponse
  attr_accessor :getTextsResult

  def initialize(getTextsResult = nil)
    @getTextsResult = getTextsResult
  end
end

# {http://www.pepto.se/webservices/}GetLanguages
class GetLanguages
  def initialize
  end
end

# {http://www.pepto.se/webservices/}GetLanguagesResponse
#   getLanguagesResult - SOAP::SOAPString
class GetLanguagesResponse
  attr_accessor :getLanguagesResult

  def initialize(getLanguagesResult = nil)
    @getLanguagesResult = getLanguagesResult
  end
end

# {http://www.pepto.se/webservices/}SetPageMode
#   id - Tnt::PrintClientIdExt
#   pageMode - SOAP::SOAPBoolean
#   fullColor - SOAP::SOAPBoolean
class SetPageMode
  attr_accessor :id
  attr_accessor :pageMode
  attr_accessor :fullColor

  def initialize(id = nil, pageMode = nil, fullColor = nil)
    @id = id
    @pageMode = pageMode
    @fullColor = fullColor
  end
end

# {http://www.pepto.se/webservices/}SetPageModeResponse
class SetPageModeResponse
  def initialize
  end
end

# {http://www.pepto.se/webservices/}GetPageMode
#   id - Tnt::PrintClientIdExt
class GetPageMode
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.pepto.se/webservices/}GetPageModeResponse
#   getPageModeResult - SOAP::SOAPInt
class GetPageModeResponse
  attr_accessor :getPageModeResult

  def initialize(getPageModeResult = nil)
    @getPageModeResult = getPageModeResult
  end
end

# {http://www.pepto.se/webservices/}GetColorMode
#   id - Tnt::PrintClientIdExt
class GetColorMode
  attr_accessor :id

  def initialize(id = nil)
    @id = id
  end
end

# {http://www.pepto.se/webservices/}GetColorModeResponse
#   getColorModeResult - SOAP::SOAPInt
class GetColorModeResponse
  attr_accessor :getColorModeResult

  def initialize(getColorModeResult = nil)
    @getColorModeResult = getColorModeResult
  end
end


end
