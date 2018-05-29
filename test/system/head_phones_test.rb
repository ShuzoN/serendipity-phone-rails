require "application_system_test_case"

class HeadPhonesTest < ApplicationSystemTestCase
  setup do
    @head_phone = head_phones(:one)
  end

  test "visiting the index" do
    visit head_phones_url
    assert_selector "h1", text: "Head Phones"
  end

  test "creating a Head phone" do
    visit head_phones_url
    click_on "New Head Phone"

    fill_in "Name", with: @head_phone.name
    fill_in "Price", with: @head_phone.price
    fill_in "Tendency", with: @head_phone.tendency
    click_on "Create Head phone"

    assert_text "Head phone was successfully created"
    click_on "Back"
  end

  test "updating a Head phone" do
    visit head_phones_url
    click_on "Edit", match: :first

    fill_in "Name", with: @head_phone.name
    fill_in "Price", with: @head_phone.price
    fill_in "Tendency", with: @head_phone.tendency
    click_on "Update Head phone"

    assert_text "Head phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Head phone" do
    visit head_phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Head phone was successfully destroyed"
  end
end
