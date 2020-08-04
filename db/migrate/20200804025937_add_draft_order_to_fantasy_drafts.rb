# frozen_string_literal: true

class AddDraftOrderToFantasyDrafts < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_drafts, :draft_order, :integer, array: true, default: []
  end
end
