# frozen_string_literal: true

class CreateDrafters < ActiveRecord::Migration[6.0]
  def change
    create_table :drafters do |t|
      t.string :name
      t.string :owner, array: true, default: []
      t.string :email, array: true, default: []

      t.timestamps
    end
  end
end
