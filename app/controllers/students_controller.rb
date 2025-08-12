class StudentsController < ApplicationController
  def index
    name = params[:name]&.titleize
    students = if params[:name].present?
                 Student.where(first_name: name).or(Student.where(last_name: name))
               else
                 Student.all
               end
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end
end
