require 'test_helper'

class CouponTest < ActiveSupport::TestCase
    test "the truth" do
      assert true
   end

  def test_coupon

    coupon1 = Coupon.new :code => "2233",
                     :discount => 10


    assert coupon1.save(:validate => false)

    coupon2 = Coupon.find(coupon1.id)

    assert_equal coupon1.code, coupon2.code

    coupon1.code = "3333"

    assert coupon1.save(:validate => false)
    assert coupon1.destroy
  end

  def test_create_and_destroy
    initial_rec_count = Coupon.count
    new_rec = Coupon.new
    new_rec.save(:validate => false)
    assert_equal(initial_rec_count + 1, Coupon.count)
    new_rec.destroy
    assert_equal(initial_rec_count, Coupon.count)
  end

end
