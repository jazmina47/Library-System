class Material < ApplicationRecord

	has_and_belongs_to_many :checkouts

	has_and_belongs_to_many :materials

	validates_uniqueness_of :material_id


end
