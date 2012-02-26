class AddForeignKeyRegistration < ActiveRecord::Migration
  def up
    #add a foreign key
    execute <<-SQL
      ALTER TABLE registrations ADD CONSTRAINT fk_events FOREIGN KEY (event_id) REFERENCES events(id)
    SQL
    execute <<-SQL
      ALTER TABLE registrations ADD CONSTRAINT fk_users FOREIGN KEY (user_id) REFERENCES users(id)
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE registrations DROP FOREIGN KEY fk_events
    SQL
    execute <<-SQL
      ALTER TABLE registrations DROP FOREIGN KEY fk_users
    SQL
  end

end
