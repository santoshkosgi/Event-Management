class Event < ActiveRecord::Base
   self.per_page = 3
  has_many :registrations
  has_many :users, :through => :registrations

end
