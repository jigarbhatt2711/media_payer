class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :season_number
      t.string :title
      t.text :plot

      t.timestamps
    end
  end
end
