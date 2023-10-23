require "rails"

module Readyset
  class Railtie < Rails::Railtie
    initializer "readyset.initialize" do |app|
      Readyset::Connection.establish
    end
  end
end
