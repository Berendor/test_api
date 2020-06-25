class Phone < ApplicationRecord
	validates :number, uniqueness: true
	validates_inclusion_of :number, in: 1111111111..9999999999
end
