require 'test_helper'

class WarrantiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warranty = warranties(:one)
  end

  test "should get index" do
    get warranties_url, as: :json
    assert_response :success
  end

  test "should create warranty" do
    assert_difference('Warranty.count') do
      post warranties_url, params: { warranty: { expires_on: @warranty.expires_on, name: @warranty.name } }, as: :json
    end

    assert_response 201
  end

  test "should show warranty" do
    get warranty_url(@warranty), as: :json
    assert_response :success
  end

  test "should update warranty" do
    patch warranty_url(@warranty), params: { warranty: { expires_on: @warranty.expires_on, name: @warranty.name } }, as: :json
    assert_response 200
  end

  test "should destroy warranty" do
    assert_difference('Warranty.count', -1) do
      delete warranty_url(@warranty), as: :json
    end

    assert_response 204
  end
end
