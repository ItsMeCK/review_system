class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.integer :product_type_id
      t.string :image
      t.timestamps
    end
  end
end
