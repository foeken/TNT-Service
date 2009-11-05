require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

module Tnt

class EasyInvoiceQueueServiceSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://www.tntfacturenpost.nl/tnt/queueservice/queueservice.asmx"

  Methods = [
    [ "http://www.pepto.se/webservices/UploadPrintFile",
      "uploadPrintFile",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "UploadPrintFile"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "UploadPrintFileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/UploadPrintFileLCID",
      "uploadPrintFileLCID",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "UploadPrintFileLCID"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "UploadPrintFileLCIDResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/SecureUploadPrintFile",
      "secureUploadPrintFile",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "SecureUploadPrintFile"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "SecureUploadPrintFileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetSystemNews",
      "getSystemNews",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemNews"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemNewsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetStatus",
      "getStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetHelpExt",
      "getHelpExt",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetHelpExt"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetHelpExtResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetSystemMessage",
      "getSystemMessage",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemMessage"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemMessageResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetSystemMessageExt",
      "getSystemMessageExt",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemMessageExt"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetSystemMessageExtResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetTexts",
      "getTexts",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetTexts"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetTextsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetLanguages",
      "getLanguages",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetLanguages"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetLanguagesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/SetPageMode",
      "setPageMode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "SetPageMode"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "SetPageModeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetPageMode",
      "getPageMode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetPageMode"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetPageModeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://www.pepto.se/webservices/GetColorMode",
      "getColorMode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetColorMode"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://www.pepto.se/webservices/", "GetColorModeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
