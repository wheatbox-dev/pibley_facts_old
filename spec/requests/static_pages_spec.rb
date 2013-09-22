require 'spec_helper'

  describe "Home page" do

    it "should have the h1 'Pibley Facts'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Pibley Facts')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Pibley Facts")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => "| Home")
    end
  end
