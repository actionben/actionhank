class HomeController < ApplicationController
  require "rexml/document"
  include REXML

  require 'net/http'
  require 'uri'
	def index
		photos = @@user.tag('homepage')
		@main_photo = photos[rand(photos.length)]
    if (newsfile = Net::HTTP::get(URI.parse('http://www.blogger.com/feeds/10153153/posts/default?orderby=published&max-results=1')))
      news = Document.new newsfile
      @story = XPath.first(news, "//entry")
    end
    @event = Myspace.get_next_gig    
	end
end
