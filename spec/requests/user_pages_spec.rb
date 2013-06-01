require 'spec_helper'

describe "UserPages" do
	subject {page}

	describe "Sign Up Page" do
		before {visit signup_path}

		it {should have_selector('h1', text: "Sign Up")}
		it {should have_selector('title', text: full_title('Sign Up'))}
	end

  describe "Sign Up Forms" do

    before { visit signup_path }

    let(:submit) { "Sign Up" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Username",     with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end


# => Something is wrong with this test! Don't know why. Implementation works perfectly. Should test for successful creation of new user.

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end


