require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "contains 'Home' in the content" do
      
      visit root_path
      page.should have_selector('h1', :text => 'Postly')
    end

    it "contains the base title" do
    	visit root_path
    	page.should have_selector('title', :text => 'Postly')
    end

    it "should not have custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do
    it "contains 'Help' in the content" do
      
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end
    it "contains the correct title" do
    	visit help_path
    	page.should have_selector('title', :text => 'Postly | Help')
    end    
  end

  describe "About page" do
    it "contains 'About us' in the content" do
      
      visit about_path
      page.should have_selector('h1', :text => 'About us')
    end
    it "contains the correct title" do
    	visit about_path
    	page.should have_selector('title', :text => 'Postly | About')
    end    
  end

  describe "Contact page" do
    it "contains 'Contact' in the content" do
      
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end
    it "contains the correct title" do
    	visit contact_path
    	page.should have_selector('title', :text => 'Postly | Contact')
    end    
  end
end
