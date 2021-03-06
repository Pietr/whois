# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/uanic/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ua.rb'

describe Whois::Record::Parser::WhoisUa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.ua/uanic/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "kyivstar.ua"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2002-09-03 00:00:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2012-07-30 16:42:30")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2014-09-03 12:18:52")
    end
  end
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(0).items
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMINISTRATIVE
      subject.admin_contacts[0].id.should            == "KG780-UANIC"
      subject.admin_contacts[0].name.should          == nil
      subject.admin_contacts[0].organization.should  == "Kyivstar GSM"
      subject.admin_contacts[0].address.should       == "Chervonozoryanyi Av., 51"
      subject.admin_contacts[0].city.should          == "KYIV"
      subject.admin_contacts[0].zip.should           == "03110"
      subject.admin_contacts[0].state.should         == nil
      subject.admin_contacts[0].country.should       == "UA"
      subject.admin_contacts[0].country_code.should  == nil
      subject.admin_contacts[0].phone.should         == "+380 (67) 2372213"
      subject.admin_contacts[0].fax.should           == "+380 (44) 2473954"
      subject.admin_contacts[0].email.should         == "dnsmaster@kyivstar.net"
      subject.admin_contacts[0].created_on.should    == nil
      subject.admin_contacts[0].updated_on.should    == Time.parse("2008-09-02 12:52:47")
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(2).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "KG780-UANIC"
      subject.technical_contacts[0].name.should          == nil
      subject.technical_contacts[0].organization.should  == "Kyivstar GSM"
      subject.technical_contacts[0].address.should       == "Chervonozoryanyi Av., 51"
      subject.technical_contacts[0].city.should          == "KYIV"
      subject.technical_contacts[0].zip.should           == "03110"
      subject.technical_contacts[0].state.should         == nil
      subject.technical_contacts[0].country.should       == "UA"
      subject.technical_contacts[0].country_code.should  == nil
      subject.technical_contacts[0].phone.should         == "+380 (67) 2372213"
      subject.technical_contacts[0].fax.should           == "+380 (44) 2473954"
      subject.technical_contacts[0].email.should         == "dnsmaster@kyivstar.net"
      subject.technical_contacts[0].created_on.should    == nil
      subject.technical_contacts[0].updated_on.should    == Time.parse("2008-09-02 12:52:47")
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns2.elvisti.kiev.ua"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns.kyivstar.net"
    end
  end
end
