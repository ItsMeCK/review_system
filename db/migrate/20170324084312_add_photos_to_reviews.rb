class AddPhotosToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :photos, :json
  end
end
