require 'test_helper'

class FoodplannersControllerTest < ActionController::TestCase
  setup do
    @foodplanner = foodplanners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foodplanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foodplanner" do
    assert_difference('Foodplanner.count') do
      post :create, foodplanner: { breakfast: @foodplanner.breakfast, date: @foodplanner.date, dinner: @foodplanner.dinner, lunch: @foodplanner.lunch, shoppinglist: @foodplanner.shoppinglist, snacks: @foodplanner.snacks, title: @foodplanner.title }
    end

    assert_redirected_to foodplanner_path(assigns(:foodplanner))
  end

  test "should show foodplanner" do
    get :show, id: @foodplanner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foodplanner
    assert_response :success
  end

  test "should update foodplanner" do
    patch :update, id: @foodplanner, foodplanner: { breakfast: @foodplanner.breakfast, date: @foodplanner.date, dinner: @foodplanner.dinner, lunch: @foodplanner.lunch, shoppinglist: @foodplanner.shoppinglist, snacks: @foodplanner.snacks, title: @foodplanner.title }
    assert_redirected_to foodplanner_path(assigns(:foodplanner))
  end

  test "should destroy foodplanner" do
    assert_difference('Foodplanner.count', -1) do
      delete :destroy, id: @foodplanner
    end

    assert_redirected_to foodplanners_path
  end
end
