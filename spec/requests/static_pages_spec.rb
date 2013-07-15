require 'spec_helper'

describe "StaticPages" do
  subject { page }
  
  describe "Home page" do
    before { visit root_path }
    
    it { should have_content('Hubly') }
    it { should have_title(full_title('')) }
  end
  
  describe "Help page" do
    before { visit help_path }
    
    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end
  
  describe "About page" do
    before { visit about_path }
    
    it { should have_content('About') }
    it { should have_title(full_title('About')) }
  end
  
  describe "Login page" do
    before { visit login_path }
    
    it { should have_content('Login') }
    it { should have_title(full_title('Login')) }
  end
end
