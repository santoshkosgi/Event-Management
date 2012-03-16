class AddAmountToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :amount, :integer,:null => 300
  end
end
