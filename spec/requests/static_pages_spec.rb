require 'spec_helper'

describe "Static Pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}") #Any subtring would do here
    end

    it "should not have a custum page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
    
  end


  describe "Help Page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content("Help") #Any subtring would do here
    end

  	it "should have title 'Help'" do
  		visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help") #Any subtring would do here
  	end
  end

  describe "About page" do 

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content("About Us") #Any subtring would do here
    end

  	it "should have title 'About Us'" do
  		visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us") #Any subtring would do here
  	end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content("Contact")
    end

    it "should have title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end

end
