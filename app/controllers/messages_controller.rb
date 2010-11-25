class MessagesController < ApplicationController
	def list
		@messages = Message.find_all
	end
	
	def new
		@message = Message.new
		@users = User.find_all
		@messages = Message.find_all
	end
	
	def create
		@message = Message.new(params[:message])
		if @message.save
			flash[:notice] = "Message created Successfully"
			redirect_to :controller=>"messages", :action=>"list"
		else
			@users = User.find_all
			render :action => "new"
		end
	end
	
	def delete
		@message = Message.find_by_id(params[:id])
		@message.destroy
		flash[:notice] = "messagage deleted successfully"
		redirect_to :controller=>"messages", :action=>"list"
	end
end
