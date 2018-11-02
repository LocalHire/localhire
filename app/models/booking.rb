class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :lender
end
