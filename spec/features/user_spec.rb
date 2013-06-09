require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "User" do
  
  let(:user) { FactoryGirl.create(:user) }
  before do
    login_as(user)
  end
  
  subject { user }

  it { should respond_to(:microposts) }
  
  describe "micropost associations" do
    before { user.save }
    
    let!(:older_micropost) do
      FactoryGirl.create(:micropost, user: user, created_at: 1.day.ago)
    end
    
    let!(:newer_micropost) do
      FactoryGirl.create(:micropost, user: user, created_at: 1.hour.ago)
    end 
    
    it "should have the right microposts in the right order" do
      user.microposts.should == [newer_micropost, older_micropost]
    end
    
    it "should destroy associated microposts" do
      microposts = user.microposts
      user.destroy
      
      microposts.each do |micropost|
        Micropost.find_by_id(micropost.id).should be_nil
      end
    end
  end
  
  # To get Warden user login mechanism working correctly reset 
  # Warden after each test.  
  Warden.test_reset!
end