class CardholderAccount < ApplicationRecord

	has_one	    :cardhorder_personal_info	

	has_many    :checkouts

	has_many    :fines

	validates_uniqueness_of :cardholder_id

end
