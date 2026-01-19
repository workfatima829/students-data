Rails.application.routes.draw do
  devise_for :students
  resources :students
   root to: redirect("/students/sign_in")
end
