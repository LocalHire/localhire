class Item < ApplicationRecord
    has_many_attached :images
    belongs_to :lender
    belongs_to :user
    has_many :bookings
end


