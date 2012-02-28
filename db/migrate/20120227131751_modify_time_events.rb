class ModifyTimeEvents < ActiveRecord::Migration
  def change
    execute <<-SQL
    ALTER TABLE events MODIFY time int(11)
    SQL
  end
end
