class ProfilesController < ApplicationController
	def ben
		get_photos('profileben')
	end
	def ali
		get_photos('profileali')
	end
	def chris
		get_photos('profilechris')
	end
	def thom
		get_photos('profilethom')
	end
	def mattbass
		get_photos('profilemattbass')
	end
	def matttrumpet
		get_photos('profilematttrumpet')
	end
	def jon
		get_photos('profilejon')
	end
end
