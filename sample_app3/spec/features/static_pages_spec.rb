require 'rails_helper'

#RSpec.describe "StaticPages", type: :request do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      get static_pages_index_path
#      expect(response).to have_http_status(200)
#    end
#  end
#end
#

feature "Static pages" do

#variable
let(:base_title) { "Ruby on Rails Tutorial Sample App" }

#require "rails_helper"
feature "Home page" do
  scenario "should have the content 'Sample App'" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
  end
  it "should have the base title" do
    visit '/static_pages/home'
    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
  end
  it "should not have a custom page title" do
  	  visit '/static_pages/home'
  	  #expect(page).not_to have_title('| Home')
  	  expect(page).not_to have_title('| Home')
  end
end

feature "Help page" do
  scenario "should have the content 'Help'" do
    visit '/static_pages/help'
    expect(page).to have_content('Help')
  end
end

feature "About page" do
  scenario "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end
end

feature "Contact page" do
  scenario "should have the content 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_content('Contact')
  end
  it "should have the title 'Contact'" do
    visit '/static_pages/contact'
    expect(page).to have_title("#{base_title} | Contact")
  end
end

end

#title test
#it "should have the right title" do
#  visit '/static_pages/home'
#  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
#end
