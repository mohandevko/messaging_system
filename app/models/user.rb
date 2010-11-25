class User < ActiveRecord::Base
	has_many :sent_messages, :class_name => "Message", :foreign_key=>"sender_id", :dependent => :destroy
	has_many :recieved_messages, :class_name => "Message", :foreign_key=>"recipient_id", :dependent => :destroy
	
	validates_presence_of :name
end
