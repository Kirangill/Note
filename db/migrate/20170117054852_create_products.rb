class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :subdomain
      t.string :content
      t.references :factory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
