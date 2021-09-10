class PostsController < ApplicationController
  # skip_before_action :authenticate_user!
  before_action :set_post, only: [:show, :update, :destroy]

  def index
    posts = Post.default_search
    render json: posts.to_json
  end

  def show
    render json: @post.to_json
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post.to_json
    end
  end

  def update
    if @post.update(post_params) 
      render json: @post.to_json
    end
  end

  def delete
    if @post.destroy
      render json: @post.to_json
    end
  end

  private
  
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:date, :start_time, :end_time, :kind_of_climbing)
    end
end
