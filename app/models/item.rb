class Item < ApplicationRecord
    has_many_attached :images
    belongs_to :lender
    belongs_to :user
    has_many :bookings

    geocoded_by :address
    after_validation :geocode
  def address
    [street, city, state, country].compact.join(', ')
  end

end


