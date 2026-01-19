# Rails.application.routes.draw do
#   get "courses/index"
#   devise_for :students
#   resources :students
#    root to: redirect("/students/sign_in")
# end
# config/routes.rb

Rails.application.routes.draw do
  devise_for :students
 
  resources :students do  
    member do
      get :select_courses
      patch :update_courses
    end
  end
resources :courses, only: [:index]
 root to: redirect("/students/sign_in")
end
