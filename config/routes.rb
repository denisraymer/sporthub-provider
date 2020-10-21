# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/index'
  get 'post/:id', to: 'posts#show'

  root to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
