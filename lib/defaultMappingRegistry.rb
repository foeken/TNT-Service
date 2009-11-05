require 'default.rb'
require 'soap/mapping'

module Tnt

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsWebservices = "http://www.pepto.se/webservices/"

  EncodedRegistry.register(
    :class => Tnt::PrintClientId,
    :schema_type => XSD::QName.new(NsWebservices, "PrintClientId"),
    :schema_element => [
      ["licenceNumber", "SOAP::SOAPString", [0, 1]],
      ["customerNumber", "SOAP::SOAPString", [0, 1]],
      ["installationInfo", ["Tnt::ArrayOfClientFile", XSD::QName.new(NsWebservices, "InstallationInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Tnt::ArrayOfClientFile,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfClientFile"),
    :schema_element => [
      ["clientFile", ["Tnt::ClientFile[]", XSD::QName.new(NsWebservices, "ClientFile")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Tnt::ClientFile,
    :schema_type => XSD::QName.new(NsWebservices, "ClientFile"),
    :schema_element => [
      ["fileName", "SOAP::SOAPString", [0, 1]],
      ["fileVersion", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Tnt::StandardMessage,
    :schema_type => XSD::QName.new(NsWebservices, "StandardMessage"),
    :schema_element => [
      ["title", "SOAP::SOAPString", [0, 1]],
      ["msg", "SOAP::SOAPString", [0, 1]],
      ["link", "SOAP::SOAPString", [0, 1]],
      ["isEmpty", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => Tnt::PrintClientIdExt,
    :schema_type => XSD::QName.new(NsWebservices, "PrintClientIdExt"),
    :schema_element => [
      ["licenceNumber", "SOAP::SOAPString", [0, 1]],
      ["customerNumber", "SOAP::SOAPString", [0, 1]],
      ["clientWinId", "SOAP::SOAPString", [0, 1]],
      ["lCID", ["SOAP::SOAPInt", XSD::QName.new(NsWebservices, "LCID")]],
      ["installationInfo", ["Tnt::ArrayOfClientFile", XSD::QName.new(NsWebservices, "InstallationInfo")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Tnt::StandardMessageExt,
    :schema_type => XSD::QName.new(NsWebservices, "StandardMessageExt"),
    :schema_element => [
      ["title", "SOAP::SOAPString", [0, 1]],
      ["msg", "SOAP::SOAPString", [0, 1]],
      ["link", "SOAP::SOAPString", [0, 1]],
      ["isEmpty", "SOAP::SOAPBoolean"],
      ["isErrorMsg", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::PrintClientId,
    :schema_type => XSD::QName.new(NsWebservices, "PrintClientId"),
    :schema_element => [
      ["licenceNumber", "SOAP::SOAPString", [0, 1]],
      ["customerNumber", "SOAP::SOAPString", [0, 1]],
      ["installationInfo", ["Tnt::ArrayOfClientFile", XSD::QName.new(NsWebservices, "InstallationInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::ArrayOfClientFile,
    :schema_type => XSD::QName.new(NsWebservices, "ArrayOfClientFile"),
    :schema_element => [
      ["clientFile", ["Tnt::ClientFile[]", XSD::QName.new(NsWebservices, "ClientFile")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::ClientFile,
    :schema_type => XSD::QName.new(NsWebservices, "ClientFile"),
    :schema_element => [
      ["fileName", "SOAP::SOAPString", [0, 1]],
      ["fileVersion", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::StandardMessage,
    :schema_type => XSD::QName.new(NsWebservices, "StandardMessage"),
    :schema_element => [
      ["title", "SOAP::SOAPString", [0, 1]],
      ["msg", "SOAP::SOAPString", [0, 1]],
      ["link", "SOAP::SOAPString", [0, 1]],
      ["isEmpty", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::PrintClientIdExt,
    :schema_type => XSD::QName.new(NsWebservices, "PrintClientIdExt"),
    :schema_element => [
      ["licenceNumber", "SOAP::SOAPString", [0, 1]],
      ["customerNumber", "SOAP::SOAPString", [0, 1]],
      ["clientWinId", "SOAP::SOAPString", [0, 1]],
      ["lCID", ["SOAP::SOAPInt", XSD::QName.new(NsWebservices, "LCID")]],
      ["installationInfo", ["Tnt::ArrayOfClientFile", XSD::QName.new(NsWebservices, "InstallationInfo")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::StandardMessageExt,
    :schema_type => XSD::QName.new(NsWebservices, "StandardMessageExt"),
    :schema_element => [
      ["title", "SOAP::SOAPString", [0, 1]],
      ["msg", "SOAP::SOAPString", [0, 1]],
      ["link", "SOAP::SOAPString", [0, 1]],
      ["isEmpty", "SOAP::SOAPBoolean"],
      ["isErrorMsg", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::UploadPrintFile,
    :schema_name => XSD::QName.new(NsWebservices, "UploadPrintFile"),
    :schema_element => [
      ["id", "Tnt::PrintClientId"],
      ["printFileData", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::UploadPrintFileResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UploadPrintFileResponse"),
    :schema_element => [
      ["uploadPrintFileResult", ["Tnt::StandardMessage", XSD::QName.new(NsWebservices, "UploadPrintFileResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::UploadPrintFileLCID,
    :schema_name => XSD::QName.new(NsWebservices, "UploadPrintFileLCID"),
    :schema_element => [
      ["id", "Tnt::PrintClientId"],
      ["printFileData", "SOAP::SOAPBase64", [0, 1]],
      ["lCID", ["SOAP::SOAPInt", XSD::QName.new(NsWebservices, "LCID")]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::UploadPrintFileLCIDResponse,
    :schema_name => XSD::QName.new(NsWebservices, "UploadPrintFileLCIDResponse"),
    :schema_element => [
      ["uploadPrintFileLCIDResult", ["Tnt::StandardMessage", XSD::QName.new(NsWebservices, "UploadPrintFileLCIDResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::SecureUploadPrintFile,
    :schema_name => XSD::QName.new(NsWebservices, "SecureUploadPrintFile"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"],
      ["printFileData", "SOAP::SOAPBase64", [0, 1]],
      ["hmac", "SOAP::SOAPBase64", [0, 1]],
      ["pageCount", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::SecureUploadPrintFileResponse,
    :schema_name => XSD::QName.new(NsWebservices, "SecureUploadPrintFileResponse"),
    :schema_element => [
      ["secureUploadPrintFileResult", ["Tnt::StandardMessageExt", XSD::QName.new(NsWebservices, "SecureUploadPrintFileResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemNews,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemNews"),
    :schema_element => [
      ["id", "Tnt::PrintClientId"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemNewsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemNewsResponse"),
    :schema_element => [
      ["getSystemNewsResult", ["Tnt::StandardMessage", XSD::QName.new(NsWebservices, "GetSystemNewsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetStatus,
    :schema_name => XSD::QName.new(NsWebservices, "GetStatus"),
    :schema_element => [
      ["id", "Tnt::PrintClientId"],
      ["intLCID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetStatusResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetStatusResponse"),
    :schema_element => [
      ["getStatusResult", ["Tnt::StandardMessage", XSD::QName.new(NsWebservices, "GetStatusResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetHelpExt,
    :schema_name => XSD::QName.new(NsWebservices, "GetHelpExt"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetHelpExtResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetHelpExtResponse"),
    :schema_element => [
      ["getHelpExtResult", ["Tnt::StandardMessageExt", XSD::QName.new(NsWebservices, "GetHelpExtResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemMessage,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemMessage"),
    :schema_element => [
      ["id", "Tnt::PrintClientId"],
      ["messageTypeName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemMessageResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemMessageResponse"),
    :schema_element => [
      ["getSystemMessageResult", ["Tnt::StandardMessage", XSD::QName.new(NsWebservices, "GetSystemMessageResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemMessageExt,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemMessageExt"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"],
      ["messageTypeName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetSystemMessageExtResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetSystemMessageExtResponse"),
    :schema_element => [
      ["getSystemMessageExtResult", ["Tnt::StandardMessageExt", XSD::QName.new(NsWebservices, "GetSystemMessageExtResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetTexts,
    :schema_name => XSD::QName.new(NsWebservices, "GetTexts"),
    :schema_element => [
      ["lang", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetTextsResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetTextsResponse"),
    :schema_element => [
      ["getTextsResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "GetTextsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetLanguages,
    :schema_name => XSD::QName.new(NsWebservices, "GetLanguages"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Tnt::GetLanguagesResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetLanguagesResponse"),
    :schema_element => [
      ["getLanguagesResult", ["SOAP::SOAPString", XSD::QName.new(NsWebservices, "GetLanguagesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::SetPageMode,
    :schema_name => XSD::QName.new(NsWebservices, "SetPageMode"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"],
      ["pageMode", "SOAP::SOAPBoolean"],
      ["fullColor", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::SetPageModeResponse,
    :schema_name => XSD::QName.new(NsWebservices, "SetPageModeResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Tnt::GetPageMode,
    :schema_name => XSD::QName.new(NsWebservices, "GetPageMode"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetPageModeResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetPageModeResponse"),
    :schema_element => [
      ["getPageModeResult", ["SOAP::SOAPInt", XSD::QName.new(NsWebservices, "GetPageModeResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetColorMode,
    :schema_name => XSD::QName.new(NsWebservices, "GetColorMode"),
    :schema_element => [
      ["id", "Tnt::PrintClientIdExt"]
    ]
  )

  LiteralRegistry.register(
    :class => Tnt::GetColorModeResponse,
    :schema_name => XSD::QName.new(NsWebservices, "GetColorModeResponse"),
    :schema_element => [
      ["getColorModeResult", ["SOAP::SOAPInt", XSD::QName.new(NsWebservices, "GetColorModeResult")]]
    ]
  )
end

end
