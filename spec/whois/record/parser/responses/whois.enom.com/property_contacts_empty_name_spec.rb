# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.enom.com/property_contacts_empty_name.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.enom.com.rb'

describe Whois::Record::Parser::WhoisEnomCom, "property_contacts_empty_name.expected" do

  subject do
    file = fixture("responses", "whois.enom.com/property_contacts_empty_name.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to have(1).items
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("")
      expect(subject.registrant_contacts[0].organization).to eq("Ben Cohen")
      expect(subject.registrant_contacts[0].address).to eq("9 Carolyn Ct.")
      expect(subject.registrant_contacts[0].city).to eq("Owings Mills")
      expect(subject.registrant_contacts[0].zip).to eq("21117")
      expect(subject.registrant_contacts[0].state).to eq("MD")
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("")
      expect(subject.registrant_contacts[0].fax).to eq("")
      expect(subject.registrant_contacts[0].email).to eq("")
    end
  end
end
