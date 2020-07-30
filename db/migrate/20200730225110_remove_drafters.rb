# frozen_string_literal: true

class RemoveDrafters < ActiveRecord::Migration[6.0]
  def change
    drop_table :drafters
  end
end
