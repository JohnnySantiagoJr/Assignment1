class Status < ActiveRecord::Base
  belongs_to :user
  attr_accessible :geocode, :image_url, :status

  validates :status, :presence => true
  validates_format_of :image_url, :with => URI::regexp(%w(http https))
end
