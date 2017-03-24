class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :product_id
      t.string :title
      t.text :content
      t.decimal :rating
      t.json :images

      t.timestamps
    end
  end
end
