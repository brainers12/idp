class UsersController < ApplicationController
    def index
        @users = if params[:search]
                   User.where("name LIKE ?", "%#{params[:search]}%")
                 else
                   User.all
                 end
    end

    def show
      @user = User.find(params[:id])
    end

    def search
        @user = User.find_by(name: params[:search])
        if @user
          render 'menu'
        else
          redirect_to users_path, notice: 'User not found.'
        end
      end
  end