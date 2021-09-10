require 'rails_helper'

RSpec.describe "Posts", type: :request do
  # user = User.create(email: "tester3@example.com", password: "password", password_confirmation: "password", name: "tester3")
  user = FactoryBot.create(:user)
  p user
  now = Time.current
  post1 = user.posts.create(date: now.since(3.days), start_time: "10:00", end_time: "16:00")
  post2 = user.posts.create(date: now.since(4.days), start_time: "10:00", end_time: "16:00")
  post3 = user.posts.create(date: now.since(5.days), start_time: "10:00", end_time: "16:00")
  post_yesterday = user.posts.create(date: now.yesterday, start_time: "10:00", end_time: "16:00")

  describe "GET /api/v1/posts" do
    it "returns http success" do
      get "/api/v1/posts"
      expect(response).to have_http_status(:success)
    end

    it "returns proper posts" do
      get "/api/v1/posts"
      jsons = JSON.parse(response.body)
      p jsons
      expect(jsons.length).to eq 3
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

  # context 'delete posts' do
  #   describe "DELETE /api/v1/posts/:id" do
  #     it "returns http success" do
  #       delete "/api/v1/posts/:id"
  #       expect(response).to have_http_status(:success)
  #     end
  #   end
  # end

end
