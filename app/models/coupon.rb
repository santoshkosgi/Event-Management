class Coupon < ActiveRecord::Base
  belongs_to :event

  def self.search(search)
    if search
      find(:all, :conditions => ['code = ?', "#{search}"])
    else
      find(:all)
    end
  end
end
