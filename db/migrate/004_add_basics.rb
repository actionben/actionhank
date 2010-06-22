class AddBasics < ActiveRecord::Migration
  def self.up
		add_column	:songs,	:title
		add_column	:songs,	:mp3
		add_column	:songs,	:album
		add_column	:songs,	:year
  end

  def self.down
  end
end
