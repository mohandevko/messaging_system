class AddReplyToMessages < ActiveRecord::Migration
  def self.up
  	add_column :messages, :reply_to, :integer
  end

  def self.down
  	remove_column :messages, :reply_to
  end
end
