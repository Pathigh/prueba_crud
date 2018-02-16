class TodosController < ApplicationController
	def index
		
		@todos = Todo.all
		
	end

	def new

		@todo = Todo.new
		
	end

	def create
		todo = Todo.new(todo_params)
		
		if todo.save
		redirect_to todo, notice:'Se creo un ToDo'
		else
			redirect_to todos_new_path notice: 'No se a creado un ToDo'
		end
		
	end

	def show
		@todo = Todo.find(params[:id])
	end

	def edit
		@todo = Todo.find(params[:id])
		
	end

	def update
		@todo = Todo.find(params[:id])

		if @todo.update(todo_params)

		 	redirect_to @todo, notice:'se modifico exitosamente'
		 else
		 	redirect_to edit_todo_path, notice: 'No se a podido actualizar'
		end 

	end

	def destroy
		@todo = Todo.find(params[:id])

		 @todo.destroy
		 redirect_to root_path, notice:'se ha borrado exitosamente'
	end

	def complete
		@todo = Todo.find(params[:id])
			
	end

	def list
		
	end

	private

	def todo_params
		params.require(:todo).permit(:description, :completed)
	end

end
