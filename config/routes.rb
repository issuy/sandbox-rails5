# frozen_string_literal: true

Rails.application.routes.draw do
  resources :map_positions
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'oauth2/authorization', action: 'authorization', controller: 'oauth2'
  get 'oauth2/callback', action: 'callback', controller: 'oauth2'
end
