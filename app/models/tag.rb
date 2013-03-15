class Tag < ActiveRecord::Base
  belongs_to :status
  attr_accessible :tag

  validates :tag, :presence => true
end
