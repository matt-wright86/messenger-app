require "test_helper"

class SignupTest < Capybara::Rails::TestCase

  test "Signup" do

    visit root_path
    click_link "Sign Up"

    fill_in "Email", with: "matt@gmail.com"
    fill_in "Password", with: "12345678"
    fill_in "Password Confirmation", with: "12345678"
    click_button "Sign Up"

    assert_content page, "brekka"


  end

  class SignupTest < Capybara::Rails::TestCase
    # 
    # test "sign in" do
    #
    #   visit root_path
    #
    #   fill_in "Email", with: "matt@gmail.com"
    #   fill_in "Password", with: "12345678"
    #   click_button "Sign In"
    #
    #   assert_content page, "brekka"
    # end

  end

end
