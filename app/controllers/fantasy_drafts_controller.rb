# frozen_string_literal: true

class FantasyDraftsController < ApplicationController
  before_action :set_fantasy_draft, only: %i[show edit update destroy]

  # GET /fantasy_drafts
  # GET /fantasy_drafts.json
  def index
    @fantasy_drafts = FantasyDraft.all
  end

  # GET /fantasy_drafts/1
  # GET /fantasy_drafts/1.json
  def show; end

  # GET /fantasy_drafts/new
  def new
    @fantasy_draft = FantasyDraft.new
  end

  # GET /fantasy_drafts/1/edit
  def edit; end

  # POST /fantasy_drafts
  # POST /fantasy_drafts.json
  def create
    @fantasy_draft = FantasyDraft.new(fantasy_draft_params)

    respond_to do |format|
      if @fantasy_draft.save
        format.html { redirect_to @fantasy_draft, notice: 'Fantasy draft was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_draft }
      else
        format.html { render :new }
        format.json { render json: @fantasy_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_drafts/1
  # PATCH/PUT /fantasy_drafts/1.json
  def update
    respond_to do |format|
      if @fantasy_draft.update(fantasy_draft_params)
        format.html { redirect_to @fantasy_draft, notice: 'Fantasy draft was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_draft }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_drafts/1
  # DELETE /fantasy_drafts/1.json
  def destroy
    @fantasy_draft.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_drafts_url, notice: 'Fantasy draft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fantasy_draft
    @fantasy_draft = FantasyDraft.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def fantasy_draft_params
    params.require(:fantasy_draft).permit(:fantasy_league_id, :name, :datetime)
  end
end
