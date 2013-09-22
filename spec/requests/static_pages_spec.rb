require 'spec_helper'

  describe "Home page" do

    it "should have the h1 'Pibley Facts'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Pibley Facts')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Pibley Facts | Home")
    end
  end
