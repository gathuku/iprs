require "faraday"
require "faraday_middleware"

module Iprs
  class Client
    attr_reader :log, :pass, :adapter, :url_prefix

    def initialize(log:, pass:, adapter: Faraday.default_adapter)
      @log = log
      @pass = pass
      @adapter = adapter
      @url_prefix = url_prefix
    end

    def login
      Login.new(self).call
    end

    def connection
      @connection ||= Faraday.new do |conn|
        conn.url_prefix = @url_prefix || "https://esb.ext.api.uat.absa.co.za:1401/enterprise-ext-uat/ext/rbbrb/IPRSServerwcf9004"

        # conn.response :xml,  :content_type => /\bxml$/
        conn.adapter adapter
      end
    end
  end
end
