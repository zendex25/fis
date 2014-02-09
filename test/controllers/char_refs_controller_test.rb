require 'test_helper'

class CharRefsControllerTest < ActionController::TestCase
  setup do
    @char_ref = char_refs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:char_refs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create char_ref" do
    assert_difference('CharRef.count') do
      post :create, char_ref: { address: @char_ref.address, designation: @char_ref.designation, faculty_id: @char_ref.faculty_id, name: @char_ref.name, tel: @char_ref.tel }
    end

    assert_redirected_to char_ref_path(assigns(:char_ref))
  end

  test "should show char_ref" do
    get :show, id: @char_ref
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @char_ref
    assert_response :success
  end

  test "should update char_ref" do
    patch :update, id: @char_ref, char_ref: { address: @char_ref.address, designation: @char_ref.designation, faculty_id: @char_ref.faculty_id, name: @char_ref.name, tel: @char_ref.tel }
    assert_redirected_to char_ref_path(assigns(:char_ref))
  end

  test "should destroy char_ref" do
    assert_difference('CharRef.count', -1) do
      delete :destroy, id: @char_ref
    end

    assert_redirected_to char_refs_path
  end
end
