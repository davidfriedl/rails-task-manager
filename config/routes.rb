Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  # order matters. otherwise code will redirect to tasks/:id as it sees sth after the /
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  post 'tasks', to: 'tasks#create'
  get 'tasks/edit/:id', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#delete'
end
