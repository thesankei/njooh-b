require 'spec_helper'

feature "HomeController" do
  describe "GET /" do
   it "Displays Login page" do
     visit '/'
     
     page.should have_content 'Login'
   end
  end
  
  describe "index" do
   it "Displays user's home page with content 'Home#index'" do
     visit '/home/index'
     
     page.should have_content 'Home#index'
   end
  end
end