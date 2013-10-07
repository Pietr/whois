# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.coop/property_status_multiple.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.coop.rb'

describe Whois::Record::Parser::WhoisNicCoop, "property_status_multiple.expected" do

  subject do
    file = fixture("responses", "whois.nic.coop/property_status_multiple.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#status" do
    it do
      expect(subject.status).to eq(["clientDeleteProhibited", "clientTransferProhibited", "clientUpdateProhibited"])
    end
  end
end
