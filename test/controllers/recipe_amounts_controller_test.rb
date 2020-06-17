require 'test_helper'

class RecipeAmountsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get recipe_amounts_create_url
    assert_response :success
  end

  test "should get new" do
    get recipe_amounts_new_url
    assert_response :success
  end

end
