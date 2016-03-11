require 'rails_helper'

RSpec.feature "Shows", type: :feature do

  describe "as a user I am taken to a show page which displays my registration information" do
    it "as a user I am taken to a confirmation page" do
      #fill in the form
      def userfillsinform
        it "as a user I can fill out a form" do
          visit '/users/new'
          expect(page).to have_content("Register")
          fill_in 'username', with: 'Mike'
          fill_in 'password', with: 'Mike1'
        end
      end
            #click the button
      userclicksbutton
      #go to the show page
      visit '/users/show'
      #

      expect(page).to have_content("confirmation page")
    end
  end





end
