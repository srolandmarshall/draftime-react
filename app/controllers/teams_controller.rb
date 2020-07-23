# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :set_api_v1_team, only: %i[show edit update destroy]

  # GET /api/v1/teams
  # GET /api/v1/teams.json
  def index
    @api_v1_teams = Team.all
  end

  # GET /api/v1/teams/1
  # GET /api/v1/teams/1.json
  def show; end

  # GET /api/v1/teams/new
  def new
    @api_v1_team = Team.new
  end

  # GET /api/v1/teams/1/edit
  def edit; end

  # POST /api/v1/teams
  # POST /api/v1/teams.json
  def create
    @api_v1_team = Team.new(api_v1_team_params)

    respond_to do |format|
      if @api_v1_team.save
        format.html { redirect_to @api_v1_team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_team }
      else
        format.html { render :new }
        format.json { render json: @api_v1_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/teams/1
  # PATCH/PUT /api/v1/teams/1.json
  def update
    respond_to do |format|
      if @api_v1_team.update(api_v1_team_params)
        format.html { redirect_to @api_v1_team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_team }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/teams/1
  # DELETE /api/v1/teams/1.json
  def destroy
    @api_v1_team.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_team
    @api_v1_team = Team.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_team_params
    params.require(:api_v1_team).permit(:code, :full_name, :short_name)
  end
end
