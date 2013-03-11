class MapsController < ApplicationController
  require 'open-uri'
  require 'json'
  
  def home
    @taxon_id = params[:taxon_id]
    url = "http://www.inaturalist.org/taxa/#{@taxon_id}.json"
    result = JSON.parse(open(url).read)
    @name = result["name"]
  end

end
