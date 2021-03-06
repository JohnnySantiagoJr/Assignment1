class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :name, :presence => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}

  has_many :statuses, :dependent => :destroy
=begin
  has_and_belongs_to_many :follows,
  	:association_foreign_key => 'follow',
  	:class_name => 'User',
  	:join_table => 'follow'

  has_and_belongs_to_many :follows
  	:association_foreign_key => 'follower'
  	:class_name => 'User'
  	:join_table => 'follow'
=end
  def number_of_statuses
  	return statuses.length
  end
  
  def average_word_count_per_status
    @statuses = statuses
    @status_count = @statuses.count
    @total_word_count = 0
    @statuses.each do |this|
      @status = this.status
      @total_word_count += @status.split.size
    end
    return @total_word_count/@status_count.to_f
  end
end
