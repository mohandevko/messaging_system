class Message < ActiveRecord::Base
	#Associations
	belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"
	belongs_to :recipient, :class_name => "User", :foreign_key => "recipient_id"
	
	#Validations
	validates_presence_of :subject
	validates_presence_of :body
	validates_presence_of :sender_id
	validates_presence_of :recipient_id
end
