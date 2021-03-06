# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic-se.se/property_status_inactive.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic-se.se.rb'

describe Whois::Record::Parser::WhoisNicSeSe, "property_status_inactive.expected" do

  subject do
    file = fixture("responses", "whois.nic-se.se/property_status_inactive.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
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
      subject.created_on.should == Time.parse("2000-11-01")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should == Time.parse("2006-04-18")
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should == []
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.name.should == "CoreRegistry"
    end
  end
end
