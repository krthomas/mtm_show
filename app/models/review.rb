class Review < ActiveRecord::Base
  belongs_to :episode

  attr_accessible :content, :reviewer_name, :episode_id

  validates :content, :length => { :maximum => 500 }

  validates :content,  :presence => true
  validates :reviewer_name,  :presence => true
  validates :episode_id,  :presence => true


  default_scope :order => 'reviews.created_at DESC'
end
