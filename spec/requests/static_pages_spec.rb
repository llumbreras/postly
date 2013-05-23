require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "contains 'Home' in the content" do
      
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Home')
    end

    it "contains the correct title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => 'Postly | Home')
    end
  end

  describe "Help page" do
    it "contains 'Help' in the content" do
      
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "contains the correct title" do
    	visit '/static_pages/help'
    	page.should have_selector('title', :text => 'Postly | Help')
    end    
  end

  describe "About page" do
    it "contains 'About us' in the content" do
      
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About us')
    end
    it "contains the correct title" do
    	visit '/static_pages/about'
    	page.should have_selector('title', :text => 'Postly | About')
    end    
  end

  describe "Contact page" do
    it "contains 'Contact' in the content" do
      
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end
    it "contains the correct title" do
    	visit '/static_pages/contact'
    	page.should have_selector('title', :text => 'Postly | Contact')
    end    
  end
end
