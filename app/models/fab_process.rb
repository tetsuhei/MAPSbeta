class FabProcess < ActiveRecord::Base
	#Order for the listing
	default_scope :order => 'category'
	
	# Validations
	validates :name, :category, :presence => true
	validates :name, :uniqueness => true
end
