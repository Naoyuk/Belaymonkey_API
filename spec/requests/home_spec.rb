# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /api/v1/index' do
    it 'returns http success' do
      user = FactoryBot.create(:user)
      # post user_session_path, params: { session: { email: user.email,
      #                                              passowrd: user.password } }
      sign_in user
      get '/api/v1/posts'
      expect(response).to have_http_status(:success)
    end
  end
end
