class PagesController < ApplicationController
  def home
    @cats = Cat.all 
    @todos = Todo.all 
    @users = User.all 
    @todo = Todo.new 
  end

  def create
    Todo.create(todo_params)
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
    @todo = Todo.new
    render 'home'
  end

  private
  def todo_params
    params.require(:todo).permit(:task, :finished)
  end
end