class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.references :model, index: true, foreign_key: true
      t.references :conversation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
