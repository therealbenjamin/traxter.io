class Tour < ActiveRecord::Base

	belongs_to :user
	has_many :shows
	default_scope -> { order("created_at DESC") }

end
