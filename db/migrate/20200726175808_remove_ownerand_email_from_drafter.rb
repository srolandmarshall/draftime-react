# frozen_string_literal: true

class RemoveOwnerandEmailFromDrafter < ActiveRecord::Migration[6.0]
  def change
    remove_column :drafters, :owner
    remove_column :drafters, :email
  end
end
