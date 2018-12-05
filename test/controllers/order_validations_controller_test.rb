require 'test_helper'

class OrderValidationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_validation = order_validations(:one)
  end

  test "should get index" do
    get order_validations_url
    assert_response :success
  end

  test "should get new" do
    get new_order_validation_url
    assert_response :success
  end

  test "should create order_validation" do
    assert_difference('OrderValidation.count') do
      post order_validations_url, params: { order_validation: {  } }
    end

    assert_redirected_to order_validation_url(OrderValidation.last)
  end

  test "should show order_validation" do
    get order_validation_url(@order_validation)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_validation_url(@order_validation)
    assert_response :success
  end

  test "should update order_validation" do
    patch order_validation_url(@order_validation), params: { order_validation: {  } }
    assert_redirected_to order_validation_url(@order_validation)
  end

  test "should destroy order_validation" do
    assert_difference('OrderValidation.count', -1) do
      delete order_validation_url(@order_validation)
    end

    assert_redirected_to order_validations_url
  end
end
