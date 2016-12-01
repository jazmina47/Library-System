class CardholderPersonalInfo < ApplicationRecord

	#belongs_to  :cardholder_account

	validates_uniqueness_of :cardholder_id
end
