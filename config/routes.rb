Rails.application.routes.draw do

  devise_for :users, controllers: { confirmations: "users/confirmations" }
	root to: 'welcome#index'
	namespace :admin do
		resources :students
		resources :users
    resources :contracts
    resources :courses
    resources :groups
    resources :templates
    resources :sections
    resources :clauses
    resources :teachers
    resources :themes
    resources :lessons
    resources :requisites
	end
	resources :students,  only: :show
  resources :courses,  only: :show
  resources :groups,  only: :show
  resources :teachers, only: :show
  
  
end
