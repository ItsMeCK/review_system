class AddOwnerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :owner_id, :integer
    add_column :products, :owner_type, :string
  end
end
