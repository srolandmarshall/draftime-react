# frozen_string_literal: true

class ChangePlayerIdInPicksToBeNullable < ActiveRecord::Migration[6.0]
  def change
    change_column :picks, :player_id, :bigint, null: true
  end
end
