Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'todo_lists#index'

  resources :todo_lists do
    resources :todo_list_activities
  end
end
