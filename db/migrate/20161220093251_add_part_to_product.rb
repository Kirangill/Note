class AddPartToProduct < ActiveRecord::Migration
  def change
    add_column :products, :note, :string
  end
end
