# frozen_string_literal: true

class AddIsSnakeToDraft < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_drafts, :is_snake, :boolean
  end
end
