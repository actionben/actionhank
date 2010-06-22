class RemoveYearFromShows < ActiveRecord::Migration
  def self.up
		remove_column	:shows,	:year
  end

  def self.down
  end
end
