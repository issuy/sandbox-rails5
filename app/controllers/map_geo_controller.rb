# frozen_string_literal: true

# MapGeoController
class MapGeoController < ApplicationController
  def show
    @map_entries = [
      {
        author: 'author 1',
        title: 'title 1',
        comment: 'comment 1',
        latitude: '34.074381',
        longtitude: '-118.259367'
      },
      {
        author: 'author 2',
        title: 'title 2',
        comment: 'comment 2',
        latitude: '35.074381',
        longtitude: '-117.259367'
      },
      {
        author: 'author 3',
        title: 'title 3',
        comment: 'comment 3',
        latitude: '38.074381',
        longtitude: '-113.259367'
      }
    ]
    render formats: :xml
  end
end
