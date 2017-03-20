class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.string :location
      t.references :model, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
