# frozen_string_literal: true

Rails.application.routes.draw do
  get 'splash-screen', to: 'splash_screen#index'
  get 'posts/index'
  get 'post/:id', to: 'posts#show'

  root to: 'splash_screen#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
