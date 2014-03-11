require 'test_helper'

class ClassTimesControllerTest < ActionController::TestCase
  setup do
    @class_time = class_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_time" do
    assert_difference('ClassTime.count') do
      post :create, class_time: { class_id: @class_time.class_id, time: @class_time.time, user_id: @class_time.user_id }
    end

    assert_redirected_to class_time_path(assigns(:class_time))
  end

  test "should show class_time" do
    get :show, id: @class_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_time
    assert_response :success
  end

  test "should update class_time" do
    patch :update, id: @class_time, class_time: { class_id: @class_time.class_id, time: @class_time.time, user_id: @class_time.user_id }
    assert_redirected_to class_time_path(assigns(:class_time))
  end

  test "should destroy class_time" do
    assert_difference('ClassTime.count', -1) do
      delete :destroy, id: @class_time
    end

    assert_redirected_to class_times_path
  end
end
