require "test_helper"

class GrandprixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grandprix = grandprixes(:one)
  end

  test "should get index" do
    get grandprixes_url
    assert_response :success
  end

  test "should get new" do
    get new_grandprix_url
    assert_response :success
  end

  test "should create grandprix" do
    assert_difference('Grandprix.count') do
      post grandprixes_url, params: { grandprix: { description: @grandprix.description, name: @grandprix.name } }
    end

    assert_redirected_to grandprix_url(Grandprix.last)
  end

  test "should show grandprix" do
    get grandprix_url(@grandprix)
    assert_response :success
  end

  test "should get edit" do
    get edit_grandprix_url(@grandprix)
    assert_response :success
  end

  test "should update grandprix" do
    patch grandprix_url(@grandprix), params: { grandprix: { description: @grandprix.description, name: @grandprix.name } }
    assert_redirected_to grandprix_url(@grandprix)
  end

  test "should destroy grandprix" do
    assert_difference('Grandprix.count', -1) do
      delete grandprix_url(@grandprix)
    end

    assert_redirected_to grandprixes_url
  end
end
