require 'test_helper'

class HeadPhonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @head_phone = head_phones(:one)
  end

  test "should get index" do
    get head_phones_url
    assert_response :success
  end

  test "should get new" do
    get new_head_phone_url
    assert_response :success
  end

  test "should create head_phone" do
    assert_difference('HeadPhone.count') do
      post head_phones_url, params: { head_phone: { name: @head_phone.name, price: @head_phone.price, tendency: @head_phone.tendency } }
    end

    assert_redirected_to head_phone_url(HeadPhone.last)
  end

  test "should show head_phone" do
    get head_phone_url(@head_phone)
    assert_response :success
  end

  test "should get edit" do
    get edit_head_phone_url(@head_phone)
    assert_response :success
  end

  test "should update head_phone" do
    patch head_phone_url(@head_phone), params: { head_phone: { name: @head_phone.name, price: @head_phone.price, tendency: @head_phone.tendency } }
    assert_redirected_to head_phone_url(@head_phone)
  end

  test "should destroy head_phone" do
    assert_difference('HeadPhone.count', -1) do
      delete head_phone_url(@head_phone)
    end

    assert_redirected_to head_phones_url
  end
end
