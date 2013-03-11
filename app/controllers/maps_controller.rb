class MapsController < ApplicationController

  def home
    @taxon_id = params[:taxon_id]
  end

end
