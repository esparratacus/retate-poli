  class ChallengeInstancesController < ApplicationController
  before_action :set_challenge_instance, only: [:show, :edit, :update, :destroy]
  before_action :set_challenge

  # GET /challenge_instances
  # GET /challenge_instances.json
  def index
    @challenge_instances = ChallengeInstance.all
  end

  # GET /challenge_instances/1
  # GET /challenge_instances/1.json
  def show

  end

  # GET challenge/1/challenge_instances/new
  def new
    @challenge_instance = @challenge.challenge_instances.build
  end

  # GET /challenge_instances/1/edit
  def edit
  end

  # POST /challenge_instances
  # POST /challenge_instances.json
  def create
    @challenge_instance = ChallengeInstance.new(challenge_instance_params)

    respond_to do |format|
      if @challenge_instance.save
        format.html { redirect_to @challenge_instance, notice: 'Challenge instance was successfully created.' }
        format.json { render :show, status: :created, location: @challenge_instance }
      else
        format.html { render :new }
        format.json { render json: @challenge_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /challenge_instances/1
  # PATCH/PUT /challenge_instances/1.json
  def update
    respond_to do |format|
      if @challenge_instance.update(challenge_instance_params)
        format.html { render :show, notice: 'Challenge instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @challenge_instance }
      else
        format.html { render :edit }
        format.json { render json: @challenge_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /challenge_instances/1
  # DELETE /challenge_instances/1.json
  def destroy
    @challenge_instance.destroy
    respond_to do |format|
      format.html { redirect_to challenge_instances_url, notice: 'Challenge instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge_instance
      @challenge_instance = ChallengeInstance.includes(:challenge).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def challenge_instance_params
      params.require(:challenge_instance).permit(:is_active,:is_public,:closed_on)
    end
    def set_challenge
      @challenge= Challenge.find(params[:challenge_id])
    end
end
