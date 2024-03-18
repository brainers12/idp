class PagesController < ApplicationController
    
    def index
        @users = User.paginate(page: params[:page], per_page: 10)
      end
      
    
    def about
    end

    
  end
  