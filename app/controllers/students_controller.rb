class StudentsController < ApplicationController

  def index
    students = if params[:name]
                 Student.find_by_last_name(params[:name].capitalize)
               else
                 Student.all
               end    
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
