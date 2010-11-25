class UsersController < ApplicationController
  def index
    list
    render :action => "list"
  end
  
	def list
		@users = User.find_all
	end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "User created successfully"
			redirect_to :controller=>"users", :action=>"list"
		else
			render :action => "new"
		end
	end
	
	def edit
		@user = User.find(params[:id])
	end
	
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			flash[:notice] = "Updated successfully"
			redirect_to :controller=>"users", :action=>"list"
		else
			render :action => "edit"
		end
	end
	
	def delete
		@users = User.find_by_id(params[:id])
		@users.destroy
		flash[:notice] = "User deleted Successfully"
		redirect_to :controller=>"users",:action=>"list"
	end
end
