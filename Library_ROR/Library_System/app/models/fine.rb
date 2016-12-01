class Fine < ApplicationRecord

	#belongs_to  :cardholder_account

	validates_uniqueness_of :fine_id
end
