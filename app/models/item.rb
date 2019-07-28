# frozen_string_literal: true

# Item
class Item < ApplicationRecord
  has_one_attached :image
end
