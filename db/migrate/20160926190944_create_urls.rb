class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :full_url, null: false
      t.string :short_url, null: false
      t.integer :hits, default: 0

      t.timestamps null: false
    end
  end
end
