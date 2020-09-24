# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts, only: %i[new create index]
  devise_for :users
  root 'posts#index'
end
