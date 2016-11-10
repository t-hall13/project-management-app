require 'test_helper'

class UserArtifactsControllerTest < ActionController::TestCase
  setup do
    @user_artifact = user_artifacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_artifacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_artifact" do
    assert_difference('UserArtifact.count') do
      post :create, user_artifact: { artifact_id: @user_artifact.artifact_id, user_id: @user_artifact.user_id }
    end

    assert_redirected_to user_artifact_path(assigns(:user_artifact))
  end

  test "should show user_artifact" do
    get :show, id: @user_artifact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_artifact
    assert_response :success
  end

  test "should update user_artifact" do
    patch :update, id: @user_artifact, user_artifact: { artifact_id: @user_artifact.artifact_id, user_id: @user_artifact.user_id }
    assert_redirected_to user_artifact_path(assigns(:user_artifact))
  end

  test "should destroy user_artifact" do
    assert_difference('UserArtifact.count', -1) do
      delete :destroy, id: @user_artifact
    end

    assert_redirected_to user_artifacts_path
  end
end
