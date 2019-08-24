# frozen_string_literal: true

# MapGeoController
class MapGeoController < ApplicationController
  def index
    @map_positions = MapPosition.all
    render formats: :xml
  end
end
