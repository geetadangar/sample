class State < ApplicationRecord
  belongs_to :country

  has_one :users
  has_many :cities
end
