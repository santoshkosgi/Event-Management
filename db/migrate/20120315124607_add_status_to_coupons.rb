class AddStatusToCoupons < ActiveRecord::Migration
  def change
    add_column :coupons, :status, :boolean
    Coupon.all.each do |coupon|
      coupon.update_attributes!(:status => 'true')
    end
  end
end
