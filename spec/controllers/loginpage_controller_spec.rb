require 'rails_helper'

RSpec.describe LoginpageController, type: :controller do

  describe "GET #username" do
    it "returns http success" do
      get :username
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #password" do
    it "returns http success" do
      get :password
      expect(response).to have_http_status(:success)
    end
  end

end
