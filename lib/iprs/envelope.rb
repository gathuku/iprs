require "nokogiri"

module Iprs
  class Envelope
    NAMESPACE = "http://tempuri.org/"

    def contruct(&block)
      Nokogiri::XML::Builder.new do |xml|
        xml.Envelope(
          "xmlns:soap12": "http://schemas.xmlsoap.org/wsdl/soap12/",
          "xmlns:xsd": "http://www.w3.org/2001/XMLSchema"
        ) do
          xml.parent.namespace = xml.parent.namespace_definitions.first
          xml["soap12"].Body(&block)
        end
      end
    end
  end
end
