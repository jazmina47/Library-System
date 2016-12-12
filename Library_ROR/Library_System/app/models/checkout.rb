class Checkout < ApplicationRecord

	has_and_belongs_to_many :materials
	
	validates_uniqueness_of :checkout_id


end
