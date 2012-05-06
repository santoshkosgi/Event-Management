require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  def test_user

    event1 = Event.new :name => "riviera",
                     :location => "pune",
                     :description => "cultural fest"

    assert event1.save(:validate => false)

    event2 = Event.find(event1.id)

    assert_equal event1.name, event2.name

    event1.name = "gravitas"

    assert event1.save(:validate => false)
    assert event1.destroy
  end

  def test_create_and_destroy
    initial_rec_count = Event.count
    new_rec = Event.new
    new_rec.save(:validate => false)
    assert_equal(initial_rec_count + 1, Event.count)
    new_rec.destroy
    assert_equal(initial_rec_count, Event.count)
  end

end
