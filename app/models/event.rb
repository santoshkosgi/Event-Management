class Event < ActiveRecord::Base
  self.per_page = 3
  has_many :registrations
  has_many :users, :through => :registrations
  has_many :coupons

  define_index do
    indexes :name
    indexes description
    set_property :delta => :delayed
  end
end
