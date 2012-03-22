class AddCreatedByToEvents < ActiveRecord::Migration
  def change
    add_column :events, :created_by, :integer
    Event.all.each do |event|
      event.update_attributes!(:created_by => 1)
    end

  end
end
