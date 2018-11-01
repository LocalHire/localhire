class Search < ApplicationRecord
    def items
        @items ||= find_items
    end

    private

        def find_items
            items = Item.all
            items = items.where("name ilike ?", "%#{keywords}%") if keywords.present?
            items = items.where("max_days_per_hire >= ?", hireduration) if hireduration.present?
            items
        end
end
