class CreateVenues < ActiveRecord::Migration
  def self.up
    create_table :venues do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :venues
  end
end
