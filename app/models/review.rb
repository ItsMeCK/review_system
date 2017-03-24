class Review < ApplicationRecord
	  mount_uploaders :photos, ReviewUploader
  	serialize :photos, JSON # If you use SQLite, add this line.
end
