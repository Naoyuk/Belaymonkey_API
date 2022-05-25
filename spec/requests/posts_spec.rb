# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:post_yesterday) { FactoryBot.create(:post, :created_yesterday) }
  let(:post_3_days_ago) { FactoryBot.create(:post, :created_3_days_ago) }
  let(:post_4_days_ago) { FactoryBot.create(:post, :created_4_days_ago) }
  let(:post_5_days_ago) { FactoryBot.create(:post, :created_5_days_ago) }

  describe 'GET /api/v1/posts' do
    before do
      sign_in user
    end

    it 'returns http success' do
      get '/api/v1/posts'
      expect(response).to have_http_status(:success)
    end

    it 'returns proper posts' do
      3.times { FactoryBot.create(:post) }
      get '/api/v1/posts'
      jsons = JSON.parse(response.body)
      expect(jsons.length).to eq 3
    end
  end

  describe 'POST /api/v1/posts' do
    it 'returns http success' do
      sign_in user
      post '/api/v1/posts', params: { post: { date: Date.today,
                                              start_time: '10:00',
                                              end_time: '12:00',
                                              kind_of_climbing: 1 } }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT /api/v1/posts/:id' do
    it 'returns http success' do
      post =  FactoryBot.create(:post)
      sign_in user
      put "/api/v1/posts/#{post.id}", params: { post: { date: Date.today,
                                                        start_time: '11:00',
                                                        end_time: '12:00',
                                                        kind_of_climbing: 0 } }
      expect(response).to have_http_status(:success)
      expect(post.reload.start_time.hour).to eq 11
      expect(post.reload.kind_of_climbing).to eq "0"
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
