require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "comment has body" do
    it { should have_valid(:body).when('Comment Name', 'Moon Boots') }
    it { should_not have_valid(:body).when('', nil) }
  end
end
