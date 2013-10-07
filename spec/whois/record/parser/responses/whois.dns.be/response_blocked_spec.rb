# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.be/response_blocked.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dns.be.rb'

describe Whois::Record::Parser::WhoisDnsBe, "response_blocked.expected" do

  subject do
    file = fixture("responses", "whois.dns.be/response_blocked.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#response_throttled?" do
    it do
      expect(subject.response_throttled?).to eq(true)
    end
  end
  describe "#response_blocked?" do
    it do
      expect(subject.response_blocked?).to eq(true)
    end
  end
end
