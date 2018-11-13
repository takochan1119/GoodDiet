class TeachersController < ApplicationController
    
     before_action :authenticate_teacher!, :only => [:show, :index, :edit, :update]
    
  def show
      @teacher = Teacher.find(params[:id])
  end

  def index
      @teacher = Teacher.all
  end

  def edit
      @teacher = Teacher.find(params[:id])
  end

  def update
      @teacher = Teacher.find(params[:id])
    
  end

end
