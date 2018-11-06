class Lender < ApplicationRecord
  belongs_to :user
  # has_many :items     do we have to add this in here?
end
