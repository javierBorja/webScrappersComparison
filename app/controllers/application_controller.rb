require 'link_thumbnailer'
require 'gastly'
require 'metainspector'

class ApplicationController < ActionController::Base

  def linkThumbnailerExample
    object = LinkThumbnailer.generate('https://github.com/')
    render json: object.to_json
  end

  def gastlyExample
    screenshot = Gastly.screenshot('http://google.com')
    image = screenshot.capture
    image.crop(width: 1920, height: 1080, x: 0, y: 0) # Crop with an offset
    # image.resize(width: 110, height: 110) # Creates a preview of the web page
    image.format('png')
    
    render json: image.to_json
  end


  def metaInspectorExample
    page = MetaInspector.new('https://github.com/')
    render json: {
      url: page.url,
      favicon: page.images.favicon,
      title: page.title,
      description: page.meta['description']
    }
  end
end
