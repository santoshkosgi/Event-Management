require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase

 test "the truth" do
  assert true
 end


  def test_create_and_destroy
    initial_rec_count = Registration.count
    new_rec = Registration.new
    new_rec.save(:validate => false)
    assert_equal(initial_rec_count + 1, Registration.count)
    new_rec.destroy
    assert_equal(initial_rec_count, Registration.count)
  end


end
