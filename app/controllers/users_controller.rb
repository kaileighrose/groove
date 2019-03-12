class UsersController < ApplicationController

  	def new
  		@user = User.new
  	end

  	def create
	    @user = User.create(user_params)
	    if @user.save
	      redirect_to records_path
	    else
	      flash[:error] = 'Unable to save user profile.'
	      redirect_to new_user_path
	    end
	end

	def edit
	    @user = User.find(current_user.id)
	end

	def update
	    @user = User.find(current_user.id)
	    @user.update(user_params)
	    if @user.save
	      redirect_to user_path(@user)
	    else
	      render :edit
	    end
	end

private
	
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
