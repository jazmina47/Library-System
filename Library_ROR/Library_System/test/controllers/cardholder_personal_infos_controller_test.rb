require 'test_helper'

class CardholderPersonalInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardholder_personal_info = cardholder_personal_infos(:one)
  end

  test "should get index" do
    get cardholder_personal_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_cardholder_personal_info_url
    assert_response :success
  end

  test "should create cardholder_personal_info" do
    assert_difference('CardholderPersonalInfo.count') do
      post cardholder_personal_infos_url, params: { cardholder_personal_info: { cardholder_id: @cardholder_personal_info.cardholder_id, city: @cardholder_personal_info.city, email: @cardholder_personal_info.email, home_num: @cardholder_personal_info.home_num, lastname: @cardholder_personal_info.lastname, name: @cardholder_personal_info.name, phone_num: @cardholder_personal_info.phone_num, state: @cardholder_personal_info.state, street: @cardholder_personal_info.street, zip: @cardholder_personal_info.zip } }
    end

    assert_redirected_to cardholder_personal_info_url(CardholderPersonalInfo.last)
  end

  test "should show cardholder_personal_info" do
    get cardholder_personal_info_url(@cardholder_personal_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardholder_personal_info_url(@cardholder_personal_info)
    assert_response :success
  end

  test "should update cardholder_personal_info" do
    patch cardholder_personal_info_url(@cardholder_personal_info), params: { cardholder_personal_info: { cardholder_id: @cardholder_personal_info.cardholder_id, city: @cardholder_personal_info.city, email: @cardholder_personal_info.email, home_num: @cardholder_personal_info.home_num, lastname: @cardholder_personal_info.lastname, name: @cardholder_personal_info.name, phone_num: @cardholder_personal_info.phone_num, state: @cardholder_personal_info.state, street: @cardholder_personal_info.street, zip: @cardholder_personal_info.zip } }
    assert_redirected_to cardholder_personal_info_url(@cardholder_personal_info)
  end

  test "should destroy cardholder_personal_info" do
    assert_difference('CardholderPersonalInfo.count', -1) do
      delete cardholder_personal_info_url(@cardholder_personal_info)
    end

    assert_redirected_to cardholder_personal_infos_url
  end
end
