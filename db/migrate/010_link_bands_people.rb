class LinkBandsPeople < ActiveRecord::Migration
  def self.up
		create_table :bands_people, :id => false do |t|
			t.column	:person_id,	:integer
			t.column	:band_id,	:integer
		end
		add_index :bands_people, [:person_id, :band_id]
		add_index :bands_people, :band_id
  end

  def self.down
  end
end