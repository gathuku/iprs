module Iprs
  class Resource
    attr_reader :client, :args

    def initialize(client, args = {})
      @client = client
      @args = args
    end

    def post_request(url:, body: {}, headers: {})
      puts body
      puts client.connection.url_prefix
      puts client.connection.adapter

      client.connection.post(url, body, headers)
    end
  end
end
