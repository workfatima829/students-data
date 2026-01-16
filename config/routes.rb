Rails.application.routes.draw do
  devise_for :students
  resources :students
  root "students#index"
end
