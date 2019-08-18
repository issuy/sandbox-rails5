class MapGeoController < ApplicationController
  def show
    render formats: :xml
  end
end
