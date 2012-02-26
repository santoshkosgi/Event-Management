class User < ActiveRecord::Base
  acts_as_authentic

  #many to many relation through registrations
  has_many :registrations
  has_many :users, :through => :registrations

end
