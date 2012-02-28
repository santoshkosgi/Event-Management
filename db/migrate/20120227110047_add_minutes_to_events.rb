class AddMinutesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :min, :integer
    Event.all.each do |event|
      event.update_attributes!(:min => 00)
    end
  end
end
