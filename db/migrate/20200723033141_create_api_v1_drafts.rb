class CreateApiV1Drafts < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_drafts do |t|
      t.string :name
      t.datetime :datetime

      t.timestamps
    end
  end
end
