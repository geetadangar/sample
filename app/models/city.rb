class City < ApplicationRecord
  belongs_to :state

  has_many :users
  # belongs_to :country
end
	