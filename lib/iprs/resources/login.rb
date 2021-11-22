module Iprs
  class Login < Resource
    PATH = "Login"

    def call
      post_request(url: PATH, body: body)
    end

    def body
      envelope = Iprs::Envelope.new.contruct do |xml|
        xml.log(client.log)
        xml.pass(client.pass)
      end
      envelope.to_xml
    end
  end
end
