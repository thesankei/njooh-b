require 'spec_helper'

feature "Home" do
  
  subject { page }
  
  describe "Index page" do
     before { visit home_index_path }
     
     it { should have_content 'Home#index' }
     #it { should have_selector('title', text: full_title('')) }
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_selector('h1',text: 'About') }
    #it { should have_selector('title', text: full_title('About Us')) }
  end
  
  describe "Careers page" do
    before { visit careers_path }
    
    it { should have_selector('h1',text: 'Work @ Njooh') }
    #it { should have_selector('title', text: full_title('Careers')) }
  end
  
  describe "Developers page" do
    before { visit developer_path }
    
    it { should have_selector('h1',text: 'Developer') }
    #it { should have_selector('title', text: full_title('Developer')) }
  end
  
  describe "Contact page" do
    before { visit contact_path }
    
    it { should have_selector('h1',text: 'Contact Us') }
    #it { should have_selector('title', text: full_title('Contact Us')) }
  end
end