require "test_helper"

class SignupTest < Capybara::Rails::TestCase

  test "Signup" do

    visit root_path
    click_link "Sign Up"

    fill_in "Email", with: "matt5@gmail.com"
    fill_in "Password", with: "12345678"
    fill_in "Password Confirmation", with: "12345678"
    click_button "Sign Up"

    assert_content page, "welcome to msngr"
    assert_content page, "interesting people"
  end


  test "Sign in and see tl" do

    m1 = User.create email: "matt5@gmail.com", password: "12345678"
    m2 = User.create email: "matt@gmail.com", password: "12345678"
    m2.messages.create msg: "this is the newest, newest test"


    visit root_path

    fill_in "Email", with: "matt5@gmail.com"
    fill_in "Password", with: "12345678"

    click_button "Sign In"

    assert_content page, "welcome to msngr"
    assert_content page, "interesting people"

    click_link "Follow matt@gmail.com"

    assert_content page, "this is the newest, newest test"
  end




end
