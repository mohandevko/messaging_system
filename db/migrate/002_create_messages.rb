class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
    	t.column :subject, :string
    	t.column :body, :text
    	t.column :sender_id, :integer
    	t.column :recipient_id, :integer
    end
  end

  def self.down
    drop_table :messages
  end
end
