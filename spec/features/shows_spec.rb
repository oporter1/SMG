require 'rails_helper'

RSpec.feature "Shows", type: :feature do

  describe "as a user I am taken to a show page which displays my registration information" do
    it "as a user I am taken to a confirmation page" do
      visit '/users/show'
      expect(page).to have_content("confirmation page")
    end
  end





end
