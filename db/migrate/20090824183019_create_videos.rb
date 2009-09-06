class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string album_name album_url,
      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
