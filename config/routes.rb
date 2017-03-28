Rails.application.routes.draw do

  get 'categories/new'

  get 'categories/show'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  devise_for :users
	root 'articles#index'

	resources :articles
  
end
