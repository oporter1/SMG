require 'rails_helper'

RSpec.feature "Loginpages", type: :feature do
  describe "as a user I can go to the login page and submit my username and password or click on the register button and taken to the register page" do
    it "as a user I can enter in a username and password" do
      visit '/users/loginpage'
      expect(page).to have_content("Login Page")
      fill_in 'username', with: 'Mike'
      fill_in 'password', with: 'Mike1'
    end

    it "as a user I can press submit button" do
      visit '/users/loginpage'
      click_button "Submit"
      # expect(userclicksbutton)
    end
  end

    # it "as a user I can click the register now link"
    # visit '/users/new'
    # expect(page).to have_content("Register")
    # expect(userclicksbutton)
        # click('Button Value')
    # end
    #
end
