class TodosController < ApplicationController
  before_action :find_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all

    respond_to do |format|
      format.html
      format.json { render json: @todos }
      format.xml { render xml: @todos }
    end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new todo_params
    if @todo.save
      redirect_to todo_path(@todo)
    else
      render :new
    end
  end

  def show

    respond_to do |format|
      format.html
      format.json { render json: @todo }
      format.xml { render xml: @todo }
    end
  end

  def edit
  end

  def update
    if @todo.update todo_params
      redirect_to @todo
    else
      render 'edit'
    end
  end 

  def destroy
    @todo.destroy
    sleep 2
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json {render json: {status: "ok"} }
  end
end

end

private
def find_todo
  @todo = Todo.find params[:id]
end


def todo_params
  params.require(:todo).permit(:task, :notes, :completed)
end
