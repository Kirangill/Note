class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :recipient_id
      t.integer :sender_id

      t.timestamps null: false
    end
    add_index :conversations, :recipient_id
    add_index :conversations, :sender_id
  end
end
