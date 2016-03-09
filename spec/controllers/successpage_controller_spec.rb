require 'rails_helper'

RSpec.describe SuccesspageController, type: :controller do

  describe "GET #success" do
    it "returns http success" do
      get :success
      expect(response).to have_http_status(:success)
    end
  end

end
