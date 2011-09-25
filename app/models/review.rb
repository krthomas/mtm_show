class Review < ActiveRecord::Base
  belongs_to :episode

  validates :content, :length => { :maximum => 500 }
end
