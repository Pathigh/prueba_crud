Rails.application.routes.draw do

	get 'todos/new'
	post 'todos', to: 'todos#create'
	get 'todos/:id', to: 'todos#show', as: 'todo'
	get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
	patch 'todos/:id', to: 'todos#update'

	delete 'todos/:id', to: 'todos#destroy', as: 'destroy_todo'

	get 'todos/todos/id/complete', to: 'todos#complete'
	get 'todos/list', to:'todos#list', as: 'listar'

	root 'todos#index'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
