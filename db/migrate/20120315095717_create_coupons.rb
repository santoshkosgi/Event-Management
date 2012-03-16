class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :code
      t.integer :discount
      t.references :event

      t.timestamps
    end
    add_index :coupons, :event_id
  end
end
