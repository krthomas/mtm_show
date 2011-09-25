class CreateEpisodes < ActiveRecord::Migration
  def self.up
    create_table :episodes do |t|
      t.integer :season
      t.integer :episode_number
      t.string :title
      t.string :protagonist
      t.boolean :did_mary_date
      t.string :dates_name
      t.string :dates_hair_color

      t.timestamps
    end
  end

  def self.down
    drop_table :episodes
  end
end
