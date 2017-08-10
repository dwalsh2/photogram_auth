class UsersController < ApplicationController
    
    def index
        @users = User.find(params[:id])
        
        render("users/index.html.erb")
    end
    
    
end