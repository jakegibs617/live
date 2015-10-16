require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "event has unique title" do
    it { should have_valid(:title).when('Event Name', 'Moon Boots') }
    it { should_not have_valid(:title).when('', nil) }
  end

  describe "event has image" do
    it { should have_valid(:image_url).when('http://i.imgur.com/n08RsOb.jpg') }
    it { should_not have_valid(:image_url).when('', nil) }
  end

  describe "event has address" do
    it { should have_valid(:address).when('80 Highland Rd') }
    it { should_not have_valid(:address).when('', nil) }
  end

  describe "event has city" do
    it { should have_valid(:city).when('Brookline') }
    it { should_not have_valid(:city).when('', nil) }
  end

  describe "event has state" do
    it { should have_valid(:state).when('MA') }
    it { should_not have_valid(:state).when('', nil) }
  end
end
