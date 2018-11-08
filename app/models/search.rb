class Search < ApplicationRecord
    def items
        @items ||= find_items
    end

    private

        def find_items
            
        
            items = Item.all

            results  = Geocoder.search("#{suburb},VIC,Australia")
            location = results.first.coordinates

            if suburb.present? && arearange.present?
                # items = Item.near(suburb, range)
                items = Item.near(location, arearange, units: :km)               
            end

            items = items.where("name ilike ?", "%#{keywords}%") if keywords.present?

            if hireplan == 'HOURS'
                items = items.where("per_hour_availability like ?", '1')
                items = items.where("max_hours_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_hour >= ?", minprice) if minprice.present?
                items = items.where("price_per_hour <= ?", maxprice) if maxprice.present?    
            end
            if hireplan == 'DAYS'
                items = items.where("per_day_availability like ?", '1')
                items = items.where("max_days_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_day >= ?", minprice) if minprice.present?
                items = items.where("price_per_day <= ?", maxprice) if maxprice.present?
            end
            if hireplan == 'WEEKS'
                items = items.where("per_week_availability like ?", '1')
                items = items.where("max_weeks_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_week >= ?", minprice) if minprice.present?
                items = items.where("price_per_week <= ?", maxprice) if maxprice.present?
            end   
            items
        end
end

=begin 
class Search < ApplicationRecord
    def items
        @items ||= find_items
    end

    private

        def find_items
            
        
            items = Item.all

            if suburb.present? && arearange.present?
                items = Item.near(suburb, arearange)
            end

            items = items.where("name ilike ?", "%#{keywords}%") if keywords.present?

            if hireplan == 'HOURS'
                items = items.where("per_hour_availability like ?", '1')
                items = items.where("max_hours_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_hour >= ?", minprice) if minprice.present?
                items = items.where("price_per_hour <= ?", maxprice) if maxprice.present?    
            end
            if hireplan == 'DAYS'
                items = items.where("per_day_availability like ?", '1')
                items = items.where("max_days_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_day >= ?", minprice) if minprice.present?
                items = items.where("price_per_day <= ?", maxprice) if maxprice.present?
            end
            if hireplan == 'WEEKS'
                items = items.where("per_week_availability like ?", '1')
                items = items.where("max_weeks_per_hire >= ?", duration) if duration.present?
                items = items.where("price_per_week >= ?", minprice) if minprice.present?
                items = items.where("price_per_week <= ?", maxprice) if maxprice.present?
            end      
    
            items
        end
end

=end