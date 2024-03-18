# app/controllers/posts_controller.rb
# app/controllers/posts_controller.rb

class PostsController < ApplicationController
    def index
      @user = User.find(params[:user_id])
      @posts = @user.posts
    end
  end
  
  
