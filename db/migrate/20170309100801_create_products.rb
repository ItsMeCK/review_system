class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.integer :product_type_id
      t.json :images
      t.integer :businessman_id
      t.timestamps
    end
  end
end
