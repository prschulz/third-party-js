Rails.application.routes.draw do

  root to: "static#index"

  devise_for :users
  get "widget/profile/:id", to: "users#widget", as: "user_profile_widget"
  get "profile/:id", to: "users#show", as: "user_profile"
end
