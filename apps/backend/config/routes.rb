# frozen_string_literal: true

Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :locations
    end
  end

  if Rails.env.production?
    get "*path", to: "fallback#index", constraints: ->(req) {
      !req.xhr? && req.format.html?
    }
    root "fallback#index"
  end
end
