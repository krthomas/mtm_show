class Episode < ActiveRecord::Base
  attr_accessible :season, :episode_number, :title, :protagonist, :did_mary_date, :dates_name, :dates_hair_color

  validates :season, :episode_number, :title => true

  has_many :reviews
end
