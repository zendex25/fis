require 'test_helper'

class CivilServiceAndGovtExamsControllerTest < ActionController::TestCase
  setup do
    @civil_service_and_govt_exam = civil_service_and_govt_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civil_service_and_govt_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civil_service_and_govt_exam" do
    assert_difference('CivilServiceAndGovtExam.count') do
      post :create, civil_service_and_govt_exam: { date_taken: @civil_service_and_govt_exam.date_taken, exam_type: @civil_service_and_govt_exam.exam_type, faculty_id: @civil_service_and_govt_exam.faculty_id, rating: @civil_service_and_govt_exam.rating }
    end

    assert_redirected_to civil_service_and_govt_exam_path(assigns(:civil_service_and_govt_exam))
  end

  test "should show civil_service_and_govt_exam" do
    get :show, id: @civil_service_and_govt_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @civil_service_and_govt_exam
    assert_response :success
  end

  test "should update civil_service_and_govt_exam" do
    patch :update, id: @civil_service_and_govt_exam, civil_service_and_govt_exam: { date_taken: @civil_service_and_govt_exam.date_taken, exam_type: @civil_service_and_govt_exam.exam_type, faculty_id: @civil_service_and_govt_exam.faculty_id, rating: @civil_service_and_govt_exam.rating }
    assert_redirected_to civil_service_and_govt_exam_path(assigns(:civil_service_and_govt_exam))
  end

  test "should destroy civil_service_and_govt_exam" do
    assert_difference('CivilServiceAndGovtExam.count', -1) do
      delete :destroy, id: @civil_service_and_govt_exam
    end

    assert_redirected_to civil_service_and_govt_exams_path
  end
end
