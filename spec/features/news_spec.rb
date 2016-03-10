require 'rails_helper'

RSpec.feature "News", type: :feature do
  describe "as a user I can go to the homepage and see the register form" do
    it "as a user I can go to a registration page" do
      visit '/users/new'
      expect(page).to have_content("Register")
    end

    it "as a user I can fill out a form" do
      visit '/users/new'
      expect(page).to have_content("Register")
      fill_in 'username', with: 'Mike'
      fill_in 'password', with: 'Mike1'
    end

    it "as a user can click a submit button and render a confirmation page" do
      visit '/users/new'
       first('input[type="Submit"]').click
    end

    it ""
  end
end
