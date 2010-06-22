class AddInstrument < ActiveRecord::Migration
  def self.up
			add_column	:people,	:instrument,	:string
  end

  def self.down
  end
end