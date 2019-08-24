# frozen_string_literal: true

require 'application_system_test_case'

class MapPositionsTest < ApplicationSystemTestCase
  setup do
    @map_position = map_positions(:one)
  end

  test 'visiting the index' do
    visit map_positions_url
    assert_selector 'h1', text: 'Map Positions'
  end

  test 'creating a Map position' do
    visit map_positions_url
    click_on 'New Map Position'

    fill_in 'Latitude', with: @map_position.latitude
    fill_in 'Longitude', with: @map_position.longitude
    fill_in 'Title', with: @map_position.title
    click_on 'Create Map position'

    assert_text 'Map position was successfully created'
    click_on 'Back'
  end

  test 'updating a Map position' do
    visit map_positions_url
    click_on 'Edit', match: :first

    fill_in 'Latitude', with: @map_position.latitude
    fill_in 'Longitude', with: @map_position.longitude
    fill_in 'Title', with: @map_position.title
    click_on 'Update Map position'

    assert_text 'Map position was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Map position' do
    visit map_positions_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Map position was successfully destroyed'
  end
end
