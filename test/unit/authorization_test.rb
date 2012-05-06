require 'test_helper'

class AuthorizationTest < ActiveSupport::TestCase
  test "the truth" do
   assert true
  end

  def test_user

    user1 = Authorization.new :provider => "linkedin",
                     :uid => "23erdf"

    assert user1.save(:validate => false)

    user2 = Authorization.find(user1.id)

    assert_equal user1.provider, user2.provider

    user1.provider = "twitter"

    assert user1.save(:validate => false)
    assert user1.destroy
  end

  def test_create_and_destroy
    initial_rec_count = Authorization.count
    new_rec = Authorization.new
    new_rec.save(:validate => false)
    assert_equal(initial_rec_count + 1, Authorization.count)
    new_rec.destroy
    assert_equal(initial_rec_count, Authorization.count)
  end

end
