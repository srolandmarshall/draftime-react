class AddTeToFantasyLeague < ActiveRecord::Migration[6.0]
  def change
    add_column :fantasy_leagues, :te, :integer
    add_column :fantasy_leagues, :rb_or_wr, :integer
  end
end
