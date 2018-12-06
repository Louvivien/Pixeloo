require "application_system_test_case"

class OrderValidationsTest < ApplicationSystemTestCase
  setup do
    @order_validation = order_validations(:one)
  end

  test "visiting the index" do
    visit order_validations_url
    assert_selector "h1", text: "Order Validations"
  end

  test "creating a Order validation" do
    visit order_validations_url
    click_on "New Order Validation"

    click_on "Create Order validation"

    assert_text "Order validation was successfully created"
    click_on "Back"
  end

  test "updating a Order validation" do
    visit order_validations_url
    click_on "Edit", match: :first

    click_on "Update Order validation"

    assert_text "Order validation was successfully updated"
    click_on "Back"
  end

  test "destroying a Order validation" do
    visit order_validations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order validation was successfully destroyed"
  end
end
