class Event < ActiveRecord::Base
  self.per_page = 3
  has_many :registrations
  has_many :users, :through => :registrations

  def self.search(search)
    puts "in search"
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
