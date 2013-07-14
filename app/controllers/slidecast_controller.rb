class SlidecastController < ApplicationController
  def index
  	@video = 'confex.mp4'
  	@slides = 'away-day.pdf'

  	#mkdir to ouput files to
  	@output = `docsplit images #{Rails.root}/public/slides/#{@slides} --size 700x --format png --output #{Rails.root}/public/slides/#{@slides}-images/`
  	@slide_images = Dir.entries("#{Rails.root}/public/slides/#{@slides}-images")

  end
end