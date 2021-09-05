class PostsController < ApplicationController
  # before_action :authenticate_user!, only: :index
  # before_action :default_search, only: :index

  def index
    posts = Post.default_search
    render json: posts.to_json
  end

  def show
  end

  def create
  end

  def update
  end

  def delete
  end
end
