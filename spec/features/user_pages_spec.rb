require 'rails_helper'

feature "User pages" do

subject { page }

feature "signup page" do
  before { visit signup_path }
  it { should have_content('Sign up') }
  it { should have_title(full_title('Sign up')) }

  let(:submit) { "Create my account" }

  describe "with invalid information" do
    it "should not create a user" do
      expect { click_button submit }.not_to change(User, :count)
    end

    describe "after submission" do
      before { click_button submit }

      it { should have_title('Sign up') }
      it { should have_content('error') }
    end
  end

  describe "with valid information" do
    before { visit signup_path }
    before do
      fill_in "Name",         with: "Example User"
      fill_in "Email",        with: "user@example.com"
      fill_in "Password",     with: "foobar"
      fill_in "Confirmation", with: "foobar"
    end

    it "should create a user" do
      expect { click_button submit }.to change(User, :count).by(1)
    end

    describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_title(user.name) }
        #it { should have_selector('div.alert.alert-success', text: 'Welcome') }
	it { should have_error_message('Invalid') }
      end
    end

    describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }
  	let(:account) { "Account" }

	#click_link "Account"
        #before { click_button account }
	it { should have_link('Sign out') }
	it { should have_title(user.name) }
	#it { should have_selector('div.alert.alert-success', text: 'Welcome') }
	it { should have_error_message('Invalid') }
    end
end

end
