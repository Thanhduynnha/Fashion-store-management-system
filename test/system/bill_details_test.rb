require "application_system_test_case"

class BillDetailsTest < ApplicationSystemTestCase
  setup do
    @bill_detail = bill_details(:one)
  end

  test "visiting the index" do
    visit bill_details_url
    assert_selector "h1", text: "Bill details"
  end

  test "should create bill detail" do
    visit bill_details_url
    click_on "New bill detail"

    fill_in "Emid", with: @bill_detail.EmID
    fill_in "Namecus", with: @bill_detail.NameCus
    fill_in "Phonenumber", with: @bill_detail.Phonenumber
    fill_in "Product", with: @bill_detail.Product
    click_on "Create Bill detail"

    assert_text "Bill detail was successfully created"
    click_on "Back"
  end

  test "should update Bill detail" do
    visit bill_detail_url(@bill_detail)
    click_on "Edit this bill detail", match: :first

    fill_in "Emid", with: @bill_detail.EmID
    fill_in "Namecus", with: @bill_detail.NameCus
    fill_in "Phonenumber", with: @bill_detail.Phonenumber
    fill_in "Product", with: @bill_detail.Product
    click_on "Update Bill detail"

    assert_text "Bill detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Bill detail" do
    visit bill_detail_url(@bill_detail)
    click_on "Destroy this bill detail", match: :first

    assert_text "Bill detail was successfully destroyed"
  end
end
