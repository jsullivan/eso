class CreateBandsGigs < ActiveRecord::Migration
  def self.up
    create_table :bands_gigs do |t|
      t.integer :band_id
      t.integer :gig_id

      t.timestamps
    end
  end

  def self.down
    drop_table :bands_gigs
  end
end
