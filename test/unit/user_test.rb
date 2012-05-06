require 'test_helper'
class EventTest < ActiveSupport::TestCase

 test "the truth" do
  assert true
 end

  def test_user

    user1 = User.new :name => "santosh",
                     :location => "pune",
                     :email => "san@gmail.com"

    assert user1.save(:validate => false)

    user2 = User.find(user1.id)

    assert_equal user1.name, user2.name

    user1.name = "raja"

    assert user1.save(:validate => false)
    assert user1.destroy
  end

  def test_create_and_destroy
    initial_rec_count = User.count
    new_rec = User.new
    new_rec.save(:validate => false)
    assert_equal(initial_rec_count + 1, User.count)
    new_rec.destroy
    assert_equal(initial_rec_count, User.count)
  end


end
