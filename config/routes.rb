Rails.application.routes.draw do

  devise_for :users

  get "widget/profile/:id", to: "users#show"
end
