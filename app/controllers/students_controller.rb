class StudentsController < ApplicationController
  def index
    students = if params[:name]
                 Student.where('lower(first_name) like ? OR lower(last_name) like ?',
                               "%#{params[:name].downcase}%", "%#{params[:name].downcase}%")
               else
                 Student.all
               end
    render json: students
  end

  def show
    students = Student.find_by(id: params[:id])
    render json: students
  end
end
