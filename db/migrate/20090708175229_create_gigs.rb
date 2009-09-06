class CreateGigs < ActiveRecord::Migration
  def self.up
    create_table :gigs do |t|
      t.datetime :date
      t.integer :cost
      t.integer :venue_id
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :gigs
  end
end
