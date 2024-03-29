class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.string :reviewer_name
      t.string :content
      t.integer :episode_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
