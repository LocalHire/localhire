require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Description", with: @item.description
    fill_in "Instructions", with: @item.instructions
    fill_in "Max Days Per Hire", with: @item.max_days_per_hire
    fill_in "Max Weeks Per Hire", with: @item.max_weeks_per_hire
    fill_in "Min Hours Per Hire", with: @item.min_hours_per_hire
    fill_in "Name", with: @item.name
    fill_in "Price Per Day", with: @item.price_per_day
    fill_in "Price Per Hour", with: @item.price_per_hour
    fill_in "Price Per Week", with: @item.price_per_week
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @item.description
    fill_in "Instructions", with: @item.instructions
    fill_in "Max Days Per Hire", with: @item.max_days_per_hire
    fill_in "Max Weeks Per Hire", with: @item.max_weeks_per_hire
    fill_in "Min Hours Per Hire", with: @item.min_hours_per_hire
    fill_in "Name", with: @item.name
    fill_in "Price Per Day", with: @item.price_per_day
    fill_in "Price Per Hour", with: @item.price_per_hour
    fill_in "Price Per Week", with: @item.price_per_week
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
