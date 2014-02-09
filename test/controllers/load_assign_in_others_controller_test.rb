require 'test_helper'

class LoadAssignInOthersControllerTest < ActionController::TestCase
  setup do
    @load_assign_in_other = load_assign_in_others(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:load_assign_in_others)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create load_assign_in_other" do
    assert_difference('LoadAssignInOther.count') do
      post :create, load_assign_in_other: { faculty_id: @load_assign_in_other.faculty_id, institution: @load_assign_in_other.institution, load_assign_day: @load_assign_in_other.load_assign_day, load_assign_subject: @load_assign_in_other.load_assign_subject, load_assign_time: @load_assign_in_other.load_assign_time, load_assign_unit: @load_assign_in_other.load_assign_unit }
    end

    assert_redirected_to load_assign_in_other_path(assigns(:load_assign_in_other))
  end

  test "should show load_assign_in_other" do
    get :show, id: @load_assign_in_other
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @load_assign_in_other
    assert_response :success
  end

  test "should update load_assign_in_other" do
    patch :update, id: @load_assign_in_other, load_assign_in_other: { faculty_id: @load_assign_in_other.faculty_id, institution: @load_assign_in_other.institution, load_assign_day: @load_assign_in_other.load_assign_day, load_assign_subject: @load_assign_in_other.load_assign_subject, load_assign_time: @load_assign_in_other.load_assign_time, load_assign_unit: @load_assign_in_other.load_assign_unit }
    assert_redirected_to load_assign_in_other_path(assigns(:load_assign_in_other))
  end

  test "should destroy load_assign_in_other" do
    assert_difference('LoadAssignInOther.count', -1) do
      delete :destroy, id: @load_assign_in_other
    end

    assert_redirected_to load_assign_in_others_path
  end
end
