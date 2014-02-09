require 'test_helper'

class NonTeachingExperiencesControllerTest < ActionController::TestCase
  setup do
    @non_teaching_experience = non_teaching_experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_teaching_experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_teaching_experience" do
    assert_difference('NonTeachingExperience.count') do
      post :create, non_teaching_experience: { date_employed_from: @non_teaching_experience.date_employed_from, date_employed_to: @non_teaching_experience.date_employed_to, faculty_id: @non_teaching_experience.faculty_id, institution: @non_teaching_experience.institution, leave_reason: @non_teaching_experience.leave_reason, position: @non_teaching_experience.position, salary: @non_teaching_experience.salary }
    end

    assert_redirected_to non_teaching_experience_path(assigns(:non_teaching_experience))
  end

  test "should show non_teaching_experience" do
    get :show, id: @non_teaching_experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_teaching_experience
    assert_response :success
  end

  test "should update non_teaching_experience" do
    patch :update, id: @non_teaching_experience, non_teaching_experience: { date_employed_from: @non_teaching_experience.date_employed_from, date_employed_to: @non_teaching_experience.date_employed_to, faculty_id: @non_teaching_experience.faculty_id, institution: @non_teaching_experience.institution, leave_reason: @non_teaching_experience.leave_reason, position: @non_teaching_experience.position, salary: @non_teaching_experience.salary }
    assert_redirected_to non_teaching_experience_path(assigns(:non_teaching_experience))
  end

  test "should destroy non_teaching_experience" do
    assert_difference('NonTeachingExperience.count', -1) do
      delete :destroy, id: @non_teaching_experience
    end

    assert_redirected_to non_teaching_experiences_path
  end
end
