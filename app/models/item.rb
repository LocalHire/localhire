class Item < ApplicationRecord
    has_many_attached :images
    belongs_to :lender
    belongs_to :user
    has_many :bookings
    has_many :added_items, through: :bookings, source: :user

    geocoded_by :address
    after_validation :geocode
  def address
    [street, suburb, city, postcode, state].compact.join(', ')
  end

end


