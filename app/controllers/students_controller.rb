class StudentsController < ApplicationController

  def index
    if params[:name] 
      first_name_matches = Student.where(first_name: params[:name].capitalize) 
      last_name_matches = Student.where(last_name: params[:name].capitalize)
      return render json: first_name_matches.or(last_name_matches)
    end

    students = Student.all
    render json: students
  end

  def show 
    student = Student.find(params[:id])
    render json: student 
  end

end
