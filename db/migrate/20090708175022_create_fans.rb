class CreateFans < ActiveRecord::Migration
  def self.up
    create_table :fans do |t|
      t.string :email
      t.string :first
      t.string :last
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :fans
  end
end
