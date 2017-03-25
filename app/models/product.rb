class Product < ApplicationRecord
	belongs_to :owner, polymorphic: true
	mount_uploaders :images, ProductUploader
  serialize :images, JSON # If you use SQLite, add this line.
  has_many :reviews
end
