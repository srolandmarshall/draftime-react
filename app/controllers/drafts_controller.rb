# frozen_string_literal: true

class DraftsController < ApplicationController
  before_action :set_api_v1_draft, only: %i[show edit update destroy]

  # GET /api/v1/drafts
  # GET /api/v1/drafts.json
  def index
    @api_v1_drafts = Draft.all
  end

  # GET /api/v1/drafts/1
  # GET /api/v1/drafts/1.json
  def show; end

  # GET /api/v1/drafts/new
  def new
    @api_v1_draft = Draft.new
  end

  # GET /api/v1/drafts/1/edit
  def edit; end

  # POST /api/v1/drafts
  # POST /api/v1/drafts.json
  def create
    @api_v1_draft = Draft.new(api_v1_draft_params)

    respond_to do |format|
      if @api_v1_draft.save
        format.html { redirect_to @api_v1_draft, notice: 'Draft was successfully created.' }
        format.json { render :show, status: :created, location: @api_v1_draft }
      else
        format.html { render :new }
        format.json { render json: @api_v1_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/v1/drafts/1
  # PATCH/PUT /api/v1/drafts/1.json
  def update
    respond_to do |format|
      if @api_v1_draft.update(api_v1_draft_params)
        format.html { redirect_to @api_v1_draft, notice: 'Draft was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_v1_draft }
      else
        format.html { render :edit }
        format.json { render json: @api_v1_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/v1/drafts/1
  # DELETE /api/v1/drafts/1.json
  def destroy
    @api_v1_draft.destroy
    respond_to do |format|
      format.html { redirect_to api_v1_drafts_url, notice: 'Draft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_api_v1_draft
    @api_v1_draft = Draft.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def api_v1_draft_params
    params.require(:api_v1_draft).permit(:name, :datetime)
  end
end
