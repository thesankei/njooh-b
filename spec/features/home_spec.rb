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
     before { visit home_index_path }
     
     it { should have_content 'Njooh' }
     it { page_title(page).should eq(full_title(''))}
     it { should_not have_selector 'title', text: '| Home' }
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