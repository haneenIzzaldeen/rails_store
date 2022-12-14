class UsersController < ApplicationController
    before_action :set_user, only: [:show, :destroy,:edit,:update]
	def new 
		@user = User.new    
	end
	def create 
		@user = User.new(user_params)
	    @user.save 
		redirect_to users_path
		
	end
	def index 
		@users = User.all
	end 
	def show 
	end
    def update
        @user.update(user_params)
		redirect_to users_path
    end
	def edit
        
    end
    def destroy
        @user.destroy
		redirect_to users_path
    end
	
	private 
	def user_params
		params.require(:user).permit(:email ,:password , :role)
	end
    def set_user
        @user = User.find(params[:id])
	end
end
