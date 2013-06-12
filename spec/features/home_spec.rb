require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "Home" do
  
  subject { page }
  
  let(:user) { FactoryGirl.create(:user) }
  before do
    login_as(user)
  end
  
  describe "Index page" do
  
    let(:user) { FactoryGirl.create(:user) }
    before do
      FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
      FactoryGirl.create(:micropost, user: user, content: "Dolor sitamet")
      
      #sign_in user
      #visit root_path
      visit home_index_path
    end
    
    it { should have_content 'Njooh' }
    it { page_title(page).should eq(full_title(''))}
    it { should_not have_selector 'title', text: '| Home' }
    
    it "should render the user's feed" do
      user.feed.each do |item|
        page.should have_selector("li##{item.id}", text: item.content)
      end
    end
  
    describe "follower/following counts" do
      let(:other_user) { FactoryGirl.create(:user) }
      
      before do
        other_user.follow!(user)
        visit root_path
      end
      
      it { should have_link("0 following", href: following_user_path(user)) }
      it { should have_link("1 followers", href: followers_user_path(user)) }
    end   
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_selector('h1',text: 'About') }
    it { page_title(page).should eq(full_title('About Us'))}
  end
  
  describe "Careers page" do
    before { visit careers_path }
    
    it { should have_selector('h1',text: 'Work @ Njooh') }
    it { page_title(page).should eq(full_title('Careers'))}
  end
  
  describe "Developers page" do
    before { visit developer_path }
    
    it { should have_selector('h1',text: 'Developer') }
    it { page_title(page).should eq(full_title('Developer'))}
  end
  
  describe "Contact page" do
    before { visit contact_path }
    
    it { should have_selector('h1',text: 'Contact Us') }
    it { page_title(page).should eq(full_title('Contact Us'))}
  end
  
  # To get Warden user login mechanism working correctly reset 
  # Warden after each test.
  Warden.test_reset!
end