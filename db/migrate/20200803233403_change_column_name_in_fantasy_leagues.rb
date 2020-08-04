# frozen_string_literal: true

class ChangeColumnNameInFantasyLeagues < ActiveRecord::Migration[6.0]
  def change
    rename_column :fantasy_leagues, :def, :defense
  end
end
