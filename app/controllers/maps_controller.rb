class MapsController < ApplicationController
  require 'open-uri'
  require 'json'
  
  def home
    @project_id = params[:project_id]
    if @project_id
      @proj = "&project_id=#{@project_id}"
    end
    @taxon_id = params[:taxon_id]
    url = "http://www.inaturalist.org/taxa/#{@taxon_id}.json"
    result = JSON.parse(open(url).read)
    @name = result["name"]
    @time = (Time.now.to_i)/60/60/24
    if param = params[:height]
      @height = param.to_i - 40
    else
      @height = 350
    end
  end

end
