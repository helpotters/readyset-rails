# lib/readyset.rb

require "readyset/railtie" if defined?(Rails)
require "readyset/configuration"
require "readyset/connection"

module Readyset
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
