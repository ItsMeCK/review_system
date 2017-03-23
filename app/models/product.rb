class Product < ApplicationRecord
	belongs_to :owner, polymorphic: true
end
