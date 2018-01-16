
Rails.application.routes.draw do
	root 'student#index'
  resources :student
end
