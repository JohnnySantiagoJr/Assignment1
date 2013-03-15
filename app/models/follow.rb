class Follow < ActiveRecord::Base
  attr_accessible :followee, :follower

  belongs_to :user
end
