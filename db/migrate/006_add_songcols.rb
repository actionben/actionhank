class AddSongcols < ActiveRecord::Migration
  def self.up
		add_column	:songs,	:title,				:string
		add_column	:songs,	:mp3,					:string
		add_column	:songs,	:album,				:string
		add_column	:songs,	:year,				:date
		add_column	:songs,	:lyrics,			:text
		add_column	:songs,	:description,	:text
  end

  def self.down
		remove_column	:songs,	:title
		remove_column	:songs,	:mp3
		remove_column	:songs,	:album
		remove_column	:songs,	:year
		remove_column	:songs,	:lyrics
		remove_column	:songs,	:description
  end
end
