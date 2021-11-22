# frozen_string_literal: true

require_relative "iprs/version"

module Iprs
  autoload :Error, "iprs/error"
  autoload :Client, "iprs/client"
  autoload :Envelope, "iprs/envelope"
  autoload :Resource, "iprs/resource"

  autoload :Login, "iprs/resources/login"
end
