require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home") #Any subtring would do here
    end
  end


  describe "Help Page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help") #Any subtring would do here
    end

  	it "should have title 'Help'" do
  		visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help") #Any subtring would do here
  	end
  end

  describe "About page" do 

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us") #Any subtring would do here
    end

  	it "should have title 'About Us'" do
  		visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us") #Any subtring would do here
  	end
  end

end
