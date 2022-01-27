# frozen_string_literal: true

Rails.application.routes.draw do
  resources :coin_market_charts, only: %i[show]

  get "ping", to: "home#ping"

  # root to: "home#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
