class Coupon < ActiveRecord::Base
  belongs_to :event
  before_create:is_nil?
  def self.search(search)
    if search
      find(:all, :conditions => ['code = ?', "#{search}"])
    else
      find(:all)
    end
  end
  def is_nil?
    self.status=true
    return true
  end
end
