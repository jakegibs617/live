require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "event has unique title" do
    it { should have_valid(:title).when('Item Name', 'Moon Boots') }
    it { should_not have_valid(:title).when('', nil) }
  end
end
