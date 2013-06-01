#This controls the page for signing up (creating a new user in the USER MODEL (user.rb))

class UsersController < ApplicationController

  def new
  	#defining the @user variable for the form at new.html.erb
  	@user= User.new
	end

	#This part controls what happens when creating a new user using the Sign Up form (First part is success, second is failed)
	def create
	   @user = User.new(params[:user])
	   puts "valid? = #{@user.valid?.inspect}"
	   if @user.save
	   	flash[:success] = "Welcome to the Sample App!"
	   	redirect_to root_path
	   else
	     render 'new'
	    end
	end
end
