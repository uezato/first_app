require 'rails_helper'

feature "Static pages" do

#variable
let(:base_title) { "Ruby on Rails Tutorial Sample App" }

subject { page }

feature ApplicationHelper do
=begin
  before { visit root_path }
  it { should have_content('Sample App') }
  it { should have_title(full_title('')) }
  it { should_not have_title('| Home') }
=end
  #it_should_behave_like "all static pages"
  feature "full_title" do
    it "should include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end

end
