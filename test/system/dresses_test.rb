require "application_system_test_case"

class DressesTest < ApplicationSystemTestCase
  setup do
    @dress = dresses(:one)
  end

  test "visiting the index" do
    visit dresses_url
    assert_selector "h1", text: "Dresses"
  end

  test "should create dress" do
    visit dresses_url
    click_on "New dress"

    fill_in "Description", with: @dress.Description
    fill_in "Fullname", with: @dress.Fullname
    fill_in "Price", with: @dress.Price
    fill_in "Quantity", with: @dress.Quantity
    fill_in "Url", with: @dress.Url
    click_on "Create Dress"

    assert_text "Dress was successfully created"
    click_on "Back"
  end

  test "should update Dress" do
    visit dress_url(@dress)
    click_on "Edit this dress", match: :first

    fill_in "Description", with: @dress.Description
    fill_in "Fullname", with: @dress.Fullname
    fill_in "Price", with: @dress.Price
    fill_in "Quantity", with: @dress.Quantity
    fill_in "Url", with: @dress.Url
    click_on "Update Dress"

    assert_text "Dress was successfully updated"
    click_on "Back"
  end

  test "should destroy Dress" do
    visit dress_url(@dress)
    click_on "Destroy this dress", match: :first

    assert_text "Dress was successfully destroyed"
  end
end
