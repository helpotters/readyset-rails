# lib/readyset-rails/connection.rb

require "active_record"

module Readyset
  class Connection
    def self.establish
      ActiveRecord::Base.establish_connection(Readyset.configuration.connection_url)
    end
  end
end
