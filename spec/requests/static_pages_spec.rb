require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have a proper title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Home | Sample App')
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have a proper title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Help | Sample App')
    end
  end

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
    it "should have a proper title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'About Us | Sample App')
    end
  end

  describe "Contact" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    it "should have a proper title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => 'Contact Us | Sample App')
    end
  end

end
