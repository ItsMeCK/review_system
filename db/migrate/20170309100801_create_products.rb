class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.integer :type_id

      t.timestamps
    end
  end
end
