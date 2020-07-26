class FantasyTeamsController < ApplicationController
  before_action :set_fantasy_team, only: [:show, :edit, :update, :destroy]

  # GET /fantasy_teams
  # GET /fantasy_teams.json
  def index
    @fantasy_teams = FantasyTeam.all
  end

  # GET /fantasy_teams/1
  # GET /fantasy_teams/1.json
  def show
  end

  # GET /fantasy_teams/new
  def new
    @fantasy_team = FantasyTeam.new
  end

  # GET /fantasy_teams/1/edit
  def edit
  end

  # POST /fantasy_teams
  # POST /fantasy_teams.json
  def create
    @fantasy_team = FantasyTeam.new(fantasy_team_params)

    respond_to do |format|
      if @fantasy_team.save
        format.html { redirect_to @fantasy_team, notice: 'Fantasy team was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_team }
      else
        format.html { render :new }
        format.json { render json: @fantasy_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_teams/1
  # PATCH/PUT /fantasy_teams/1.json
  def update
    respond_to do |format|
      if @fantasy_team.update(fantasy_team_params)
        format.html { redirect_to @fantasy_team, notice: 'Fantasy team was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_team }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_teams/1
  # DELETE /fantasy_teams/1.json
  def destroy
    @fantasy_team.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_teams_url, notice: 'Fantasy team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_team
      @fantasy_team = FantasyTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fantasy_team_params
      params.require(:fantasy_team).permit(:name, :abbrev, :league_id)
    end
end
