require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe "comment has body" do
    it { should have_valid(:body).when('Comment Name', 'Moon Boots') }
    it { should_not have_valid(:body).when('', nil) }
  end

  describe "comment has rating" do
    it { should have_valid(:rating).when(5) }
    it { should_not have_valid(:rating).when('', nil) }
  end

end
