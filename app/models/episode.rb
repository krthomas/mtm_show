class Episode < ActiveRecord::Base
  attr_accessible :season, :episode_number, :title, :protagonist, :did_mary_date, :dates_name, :dates_hair_color

  validates :season,  :presence => true
  validates :episode_number, :presence => true
  validates :title, :presence => true

  has_many :reviews

  default_scope :order => 'episodes.season ASC'

end
