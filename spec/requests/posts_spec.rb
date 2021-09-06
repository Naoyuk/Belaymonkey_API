require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /api/v1/posts" do
    it "returns http success" do
      get "/api/v1/posts"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /api/v1/posts/:id" do
    it "returns http success" do
      get "/api/v1/posts/:id"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /api/v1/posts" do
    it "returns http success" do
      post "/api/v1/posts"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /api/v1/posts/:id" do
    it "returns http success" do
      put "/api/v1/posts/:id"
      expect(response).to have_http_status(:success)
    end
  end

  context 'delete posts' do
    describe "DELETE /api/v1/posts/:id" do
      it "returns http success" do
        delete "/api/v1/posts/:id"
        expect(response).to have_http_status(:success)
      end
    end
  end

end
