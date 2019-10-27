# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :map_geo
  resources :map_positions
  resources :items
  get 'oauth2/authorization', action: 'authorization', controller: 'oauth2'
  get 'oauth2/callback', action: 'callback', controller: 'oauth2'
end
