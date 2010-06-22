class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
    end
  end

  def self.down
    drop_table :shows
  end
end
