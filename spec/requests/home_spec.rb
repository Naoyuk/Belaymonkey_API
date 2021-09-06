require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /api/v1/index" do
    it "returns http success" do
      get "/api/v1/posts"
      expect(response).to have_http_status(:success)
    end
  end

end
