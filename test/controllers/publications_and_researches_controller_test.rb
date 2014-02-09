require 'test_helper'

class PublicationsAndResearchesControllerTest < ActionController::TestCase
  setup do
    @publications_and_research = publications_and_researches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publications_and_researches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publications_and_research" do
    assert_difference('PublicationsAndResearch.count') do
      post :create, publications_and_research: { authorship_type: @publications_and_research.authorship_type, co_author: @publications_and_research.co_author, faculty_id: @publications_and_research.faculty_id, material_type: @publications_and_research.material_type, organ_name: @publications_and_research.organ_name, publication_date: @publications_and_research.publication_date }
    end

    assert_redirected_to publications_and_research_path(assigns(:publications_and_research))
  end

  test "should show publications_and_research" do
    get :show, id: @publications_and_research
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publications_and_research
    assert_response :success
  end

  test "should update publications_and_research" do
    patch :update, id: @publications_and_research, publications_and_research: { authorship_type: @publications_and_research.authorship_type, co_author: @publications_and_research.co_author, faculty_id: @publications_and_research.faculty_id, material_type: @publications_and_research.material_type, organ_name: @publications_and_research.organ_name, publication_date: @publications_and_research.publication_date }
    assert_redirected_to publications_and_research_path(assigns(:publications_and_research))
  end

  test "should destroy publications_and_research" do
    assert_difference('PublicationsAndResearch.count', -1) do
      delete :destroy, id: @publications_and_research
    end

    assert_redirected_to publications_and_researches_path
  end
end
