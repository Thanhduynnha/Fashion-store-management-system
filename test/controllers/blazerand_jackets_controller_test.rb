require "test_helper"

class BlazerandJacketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blazerand_jacket = blazerand_jackets(:one)
  end

  test "should get index" do
    get blazerand_jackets_url
    assert_response :success
  end

  test "should get new" do
    get new_blazerand_jacket_url
    assert_response :success
  end

  test "should create blazerand_jacket" do
    assert_difference("BlazerandJacket.count") do
      post blazerand_jackets_url, params: { blazerand_jacket: { Description: @blazerand_jacket.Description, Fullname: @blazerand_jacket.Fullname, Price: @blazerand_jacket.Price, Quantity: @blazerand_jacket.Quantity, Url: @blazerand_jacket.Url } }
    end

    assert_redirected_to blazerand_jacket_url(BlazerandJacket.last)
  end

  test "should show blazerand_jacket" do
    get blazerand_jacket_url(@blazerand_jacket)
    assert_response :success
  end

  test "should get edit" do
    get edit_blazerand_jacket_url(@blazerand_jacket)
    assert_response :success
  end

  test "should update blazerand_jacket" do
    patch blazerand_jacket_url(@blazerand_jacket), params: { blazerand_jacket: { Description: @blazerand_jacket.Description, Fullname: @blazerand_jacket.Fullname, Price: @blazerand_jacket.Price, Quantity: @blazerand_jacket.Quantity, Url: @blazerand_jacket.Url } }
    assert_redirected_to blazerand_jacket_url(@blazerand_jacket)
  end

  test "should destroy blazerand_jacket" do
    assert_difference("BlazerandJacket.count", -1) do
      delete blazerand_jacket_url(@blazerand_jacket)
    end

    assert_redirected_to blazerand_jackets_url
  end
end
