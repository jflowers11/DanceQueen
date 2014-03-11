require 'test_helper'

class ClassStylesControllerTest < ActionController::TestCase
  setup do
    @class_style = class_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_style" do
    assert_difference('ClassStyle.count') do
      post :create, class_style: { freestyle: @class_style.freestyle, latin: @class_style.latin, partner: @class_style.partner, user_id: @class_style.user_id }
    end

    assert_redirected_to class_style_path(assigns(:class_style))
  end

  test "should show class_style" do
    get :show, id: @class_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_style
    assert_response :success
  end

  test "should update class_style" do
    patch :update, id: @class_style, class_style: { freestyle: @class_style.freestyle, latin: @class_style.latin, partner: @class_style.partner, user_id: @class_style.user_id }
    assert_redirected_to class_style_path(assigns(:class_style))
  end

  test "should destroy class_style" do
    assert_difference('ClassStyle.count', -1) do
      delete :destroy, id: @class_style
    end

    assert_redirected_to class_styles_path
  end
end
