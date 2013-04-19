class Status < ActiveRecord::Base
  attr_accessible :geocode, :image_url, :status

  validates :status, :presence => true
  validates_format_of :image_url, :with => URI::regexp(%w(http https))

  has_and_belongs_to_many :statuses, :foreign_key => "status_a_id", :association_foreign_key => "status_b_id"
  belongs_to :user
  has_and_belongs_to_many :tags

end
