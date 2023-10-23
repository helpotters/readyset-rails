# connection_spec.rb
# spec/readyset-rails/connection_spec.rb

require "spec_helper"
require_relative "./../lib/readyset/connection.rb"
require_relative "./../lib/readyset.rb"

RSpec.describe Readyset::Connection do
  describe ".establish" do
    let(:dummy_url) { "dummy_url" }

    before do
      allow(Readyset.configuration).to receive(:connection_url).and_return(dummy_url)
      allow(ActiveRecord::Base).to receive(:establish_connection)
    end

    it "establishes a connection with the correct URL" do
      described_class.establish
      expect(ActiveRecord::Base).to have_received(:establish_connection).with(dummy_url)
    end
  end
end
