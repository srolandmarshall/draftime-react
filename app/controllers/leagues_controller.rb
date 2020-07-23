# frozen_string_literal: true

class LeaguesController < ApplicationController
  before_action :set_api_v1_league, only: %i[show edit update destroy]

  # GET /api/v1/leagues
  # GET /api/v1/leagues.json
  def index
    @api_v1_leagues = League.all
  end

  # GET /api/v1/leagues/1
  # GET /api/v1/leagues/1.json
  def show; end

  # GET /api/v1/leagues/new
  def new
    @api_v1_league = League.new
  end

  # GET /api/v1/leagues/1/edit
  def edit; end

  # POST /api/v1/leagues
  # POST /api/v1/leagues.json
  def create
    @api_v1_league = League.new(api_v1_league_params)

    respond_to do |format|
      if @api_v1_league.save
        format.html { redirect_to @api_v1_league, notice: 'League was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_league }
      else
        format.html { render :new }
        format.json { render json: @api_v1_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/leagues/1
  # PATCH/PUT /api/v1/leagues/1.json
  def update
    respond_to do |format|
      if @api_v1_league.update(api_v1_league_params)
        format.html { redirect_to @api_v1_league, notice: 'League was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_league }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_league.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/leagues/1
  # DELETE /api/v1/leagues/1.json
  def destroy
    @api_v1_league.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_leagues_url, notice: 'League was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_league
    @api_v1_league = League.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_league_params
    params.require(:api_v1_league).permit(:name)
  end
end
