class Country < ApplicationRecord
	has_one :user
	has_many :states
	has_many :cities
end
    