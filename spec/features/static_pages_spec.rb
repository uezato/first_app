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

subject { page }

#require "rails_helper"
feature "Home page" do
  before { visit root_path }
  it { should have_content('Sample App') }
  it { should have_title(full_title('')) }
  it { should_not have_title('| Home') }
  it "should have the right links on the layout" do
    #visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    #expect(page).to # ここにコードを記入
    click_link "Contact"
    #expect(page).to # ここにコードを記入
    click_link "Home"
    click_link "Sign up now!"
    #expect(page).to # ここにコードを記入
    click_link "sample app"
    #expect(page).to # ここにコードを記入
  end

  #it_should_behave_like "all static pages"
end

feature "Help page" do
  before { visit help_path }
  it { should have_content('Help') }
  it { should have_title(full_title('Help')) }
end

feature "About page" do
  before { visit about_path }
  it { should have_content('About Us') }
  it { should have_title(full_title('About')) }
end

feature "Contact page" do
  before { visit contact_path }
  it { should have_content('Contact') }
  it { should have_title(full_title('Contact')) }
end

end

#title test
#it "should have the right title" do
#  visit '/static_pages/home'
#  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
#end
