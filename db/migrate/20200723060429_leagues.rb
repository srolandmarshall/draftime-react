# frozen_string_literal: true

class Leagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name
    end
  end
end
