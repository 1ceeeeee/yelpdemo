require 'test_helper'

class RestaurauntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restauraunt = restauraunts(:one)
  end

  test "should get index" do
    get restauraunts_url
    assert_response :success
  end

  test "should get new" do
    get new_restauraunt_url
    assert_response :success
  end

  test "should create restauraunt" do
    assert_difference('Restauraunt.count') do
      post restauraunts_url, params: { restauraunt: { address: @restauraunt.address, name: @restauraunt.name, phone: @restauraunt.phone, website: @restauraunt.website } }
    end

    assert_redirected_to restauraunt_url(Restauraunt.last)
  end

  test "should show restauraunt" do
    get restauraunt_url(@restauraunt)
    assert_response :success
  end

  test "should get edit" do
    get edit_restauraunt_url(@restauraunt)
    assert_response :success
  end

  test "should update restauraunt" do
    patch restauraunt_url(@restauraunt), params: { restauraunt: { address: @restauraunt.address, name: @restauraunt.name, phone: @restauraunt.phone, website: @restauraunt.website } }
    assert_redirected_to restauraunt_url(@restauraunt)
  end

  test "should destroy restauraunt" do
    assert_difference('Restauraunt.count', -1) do
      delete restauraunt_url(@restauraunt)
    end

    assert_redirected_to restauraunts_url
  end
end
