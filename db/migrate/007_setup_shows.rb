class SetupShows < ActiveRecord::Migration
  def self.up
		add_column	:shows,	:date,					:date
		add_column	:shows,	:doors,					:time
		add_column	:shows,	:tickets,				:string
		add_column	:shows,	:year,					:date
		add_column	:shows,	:promoter,			:string
		add_column	:shows,	:venue,					:string
		add_column	:shows,	:town,					:string
		add_column	:shows,	:map_link,			:string
		add_column	:shows,	:description,		:text
  end

  def self.down
		remove_column	:shows,	:date,				:date
		remove_column	:shows,	:doors,				:time
		remove_column	:shows,	:tickets,			:string
		remove_column	:shows,	:year,				:date
		remove_column	:shows,	:promoter,		:string
		remove_column	:shows,	:venue,				:string
		remove_column	:shows,	:town,				:string
		remove_column	:shows,	:map_link,		:string
		remove_column	:shows,	:description,	:text
  end
end
