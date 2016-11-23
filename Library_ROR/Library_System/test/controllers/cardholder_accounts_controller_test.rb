require 'test_helper'

class CardholderAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardholder_account = cardholder_accounts(:one)
  end

  test "should get index" do
    get cardholder_accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_cardholder_account_url
    assert_response :success
  end

  test "should create cardholder_account" do
    assert_difference('CardholderAccount.count') do
      post cardholder_accounts_url, params: { cardholder_account: { cardholder_id: @cardholder_account.cardholder_id, fines: @cardholder_account.fines, firstname: @cardholder_account.firstname, lastname: @cardholder_account.lastname } }
    end

    assert_redirected_to cardholder_account_url(CardholderAccount.last)
  end

  test "should show cardholder_account" do
    get cardholder_account_url(@cardholder_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardholder_account_url(@cardholder_account)
    assert_response :success
  end

  test "should update cardholder_account" do
    patch cardholder_account_url(@cardholder_account), params: { cardholder_account: { cardholder_id: @cardholder_account.cardholder_id, fines: @cardholder_account.fines, firstname: @cardholder_account.firstname, lastname: @cardholder_account.lastname } }
    assert_redirected_to cardholder_account_url(@cardholder_account)
  end

  test "should destroy cardholder_account" do
    assert_difference('CardholderAccount.count', -1) do
      delete cardholder_account_url(@cardholder_account)
    end

    assert_redirected_to cardholder_accounts_url
  end
end
