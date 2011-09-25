class Review < ActiveRecord::Base
  belongs_to :episode

  attr_accessible :content

  validates :content, :length => { :maximum => 500 }

  default_scope :order => 'reviews.created_at DESC'
end
