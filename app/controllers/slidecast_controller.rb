class SlidecastController < ApplicationController
  def index
  	@video = 'confex.mp4'
  	@slides = 'away-day.pdf'

  	#mkdir to ouput files to
  	@output = `docsplit images #{Rails.root}/public/slides/#{@slides} --size 700x --format png --output #{Rails.root}/public/slides/#{@slides}-images/`
  	#Docsplit.extract_images("#{RailsRoot}/public/slides/#{@slides}", :size => '920x240', :format => [:png], :output => "#{RailsRoot}/public/slides/#{@slides}/")
  
  end
end
