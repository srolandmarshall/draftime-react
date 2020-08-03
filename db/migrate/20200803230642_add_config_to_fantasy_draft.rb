class AddConfigToFantasyDraft < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_drafts, :config, :json
  end
end
