require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "User pages" do
  subject { page }
  
  let(:user) { FactoryGirl.create(:user) }
  before do
    login_as(user)
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    let!(:m1) { FactoryGirl.create(:micropost, user: user, content: "Foo")}
    let!(:m2) { FactoryGirl.create(:micropost, user: user, content: "Bar")}
    
    before { visit user_path(user) }
      
    it { should have_selector('h6',text: user.name) }
    it { page_title(page).should eq(full_title(user.name))}
  
    describe "microposts" do
      it { should have_content(m1.content) }
      it { should have_content(m2.content) }
      it { should have_content(user.microposts.count) }
    end
  end
  
  # To get Warden user login mechanism working correctly reset 
  # Warden after each test.
  Warden.test_reset!
end