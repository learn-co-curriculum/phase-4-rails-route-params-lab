class StudentsController < ApplicationController
  def index
    students = if params[:name]
                 Student.where('LOWER(last_name) = LOWER(?) OR LOWER(first_name) = LOWER(?)', params[:name],
                               params[:name])
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
