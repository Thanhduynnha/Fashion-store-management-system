require "application_system_test_case"

class BlazerandJacketsTest < ApplicationSystemTestCase
  setup do
    @blazerand_jacket = blazerand_jackets(:one)
  end

  test "visiting the index" do
    visit blazerand_jackets_url
    assert_selector "h1", text: "Blazerand jackets"
  end

  test "should create blazerand jacket" do
    visit blazerand_jackets_url
    click_on "New blazerand jacket"

    fill_in "Description", with: @blazerand_jacket.Description
    fill_in "Fullname", with: @blazerand_jacket.Fullname
    fill_in "Price", with: @blazerand_jacket.Price
    fill_in "Quantity", with: @blazerand_jacket.Quantity
    fill_in "Url", with: @blazerand_jacket.Url
    click_on "Create Blazerand jacket"

    assert_text "Blazerand jacket was successfully created"
    click_on "Back"
  end

  test "should update Blazerand jacket" do
    visit blazerand_jacket_url(@blazerand_jacket)
    click_on "Edit this blazerand jacket", match: :first

    fill_in "Description", with: @blazerand_jacket.Description
    fill_in "Fullname", with: @blazerand_jacket.Fullname
    fill_in "Price", with: @blazerand_jacket.Price
    fill_in "Quantity", with: @blazerand_jacket.Quantity
    fill_in "Url", with: @blazerand_jacket.Url
    click_on "Update Blazerand jacket"

    assert_text "Blazerand jacket was successfully updated"
    click_on "Back"
  end

  test "should destroy Blazerand jacket" do
    visit blazerand_jacket_url(@blazerand_jacket)
    click_on "Destroy this blazerand jacket", match: :first

    assert_text "Blazerand jacket was successfully destroyed"
  end
end
