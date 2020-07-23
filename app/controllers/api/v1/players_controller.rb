# frozen_string_literal: true

class Api::V1::PlayersController < ApplicationController
  def index
    render json: Player.all
  end

  def create
    article = Player.create(article_params)
    render json: article
  end

  def destroy
    Player.destroy(params[:id])
  end

  def update
    player = Player.find(params[:id])
    player.update_attributes(article_params)
    render json: player
  end

  private

  def article_params
    params.require(:player).permit(:id, :name, :league, :position)
  end
end
