class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, :presence => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  has_many :statuses
  
  def number_of_statuses
  	@user = User.find(user_id)
 	@statuses = @user.statuses.all
  	return @statuses.length
  end
  
end
