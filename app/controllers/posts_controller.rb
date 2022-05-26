# frozen_string_literal: true

class PostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    posts = Post.default_search
    render json: posts.to_json
  end

  def show
    post = Post.find(params[:id])
    render json: post.to_json
  end

  def edit
    post = Post.find(params[:id])
    render json: post.to_json
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: post.to_json
    end
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params) 
      render json: post.to_json
    end
  end

  def delete
    post = Post.find(params[:id])
    if post.destroy
      render json: post.to_json
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:date, :start_time, :end_time, :kind_of_climbing)
  end
end
