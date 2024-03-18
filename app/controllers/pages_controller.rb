# app/controllers/pages_controller.rb

class PagesController < ApplicationController
    
    def index
        @users = User.all
        # Add similar lines to fetch other data collections if needed
      end
    
    def about
    end
  end
  