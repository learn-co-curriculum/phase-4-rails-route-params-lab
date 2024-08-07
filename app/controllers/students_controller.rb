class StudentsController < ApplicationController

  def index
    name = params[:name]&.titleize

    students =
      if name
        Student.contains_name(name)
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
