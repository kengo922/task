require 'rails_helper'

RSpec.describe "Teachers", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/teachers/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/teachers/search"
      expect(response).to have_http_status(:success)
    end
  end

end
