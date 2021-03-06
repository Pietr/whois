# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tr/property_registrant_contact_outside_cityinoneline.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.tr.rb'

describe Whois::Record::Parser::WhoisNicTr, "property_registrant_contact_outside_cityinoneline.expected" do

  subject do
    file = fixture("responses", "whois.nic.tr/property_registrant_contact_outside_cityinoneline.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == nil
      subject.registrant_contacts[0].name.should          == "Yahoo Ýnc."
      subject.registrant_contacts[0].organization.should  == nil
      subject.registrant_contacts[0].address.should       == "701 First Avenue Sunnyvale Ca 94089"
      subject.registrant_contacts[0].city.should          == nil
      subject.registrant_contacts[0].zip.should           == nil
      subject.registrant_contacts[0].state.should         == nil
      subject.registrant_contacts[0].country.should       == "United States of America"
      subject.registrant_contacts[0].country_code.should  == nil
      subject.registrant_contacts[0].phone.should         == "+ 901-408-3493300-"
      subject.registrant_contacts[0].fax.should           == "+ 901-408-3493301"
      subject.registrant_contacts[0].email.should         == "domainadmin@yahoo-inc.com"
    end
  end
end
