class CreateBands < ActiveRecord::Migration
  def self.up
    create_table :bands do |t|
			t.column	:name,:string
			t.column	:url,	:string
    end
  end

  def self.down
    drop_table :bands
  end
end
