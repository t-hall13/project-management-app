class UserArtifactsController < ApplicationController
  before_action :set_user_artifact, only: [:show, :edit, :update, :destroy]

  # GET /user_artifacts
  # GET /user_artifacts.json
  def index
    @user_artifacts = UserArtifact.all
  end

  # GET /user_artifacts/1
  # GET /user_artifacts/1.json
  def show
  end

  # GET /user_artifacts/new
  def new
    @user_artifact = UserArtifact.new
  end

  # GET /user_artifacts/1/edit
  def edit
  end

  # POST /user_artifacts
  # POST /user_artifacts.json
  def create
    @user_artifact = UserArtifact.new(user_artifact_params)

    respond_to do |format|
      if @user_artifact.save
        format.html { redirect_to @user_artifact, notice: 'User artifact was successfully created.' }
        format.json { render :show, status: :created, location: @user_artifact }
      else
        format.html { render :new }
        format.json { render json: @user_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_artifacts/1
  # PATCH/PUT /user_artifacts/1.json
  def update
    respond_to do |format|
      if @user_artifact.update(user_artifact_params)
        format.html { redirect_to @user_artifact, notice: 'User artifact was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_artifact }
      else
        format.html { render :edit }
        format.json { render json: @user_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_artifacts/1
  # DELETE /user_artifacts/1.json
  def destroy
    @user_artifact.destroy
    respond_to do |format|
      format.html { redirect_to user_artifacts_url, notice: 'User artifact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_artifact
      @user_artifact = UserArtifact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_artifact_params
      params.require(:user_artifact).permit(:user_id, :artifact_id)
    end
end
