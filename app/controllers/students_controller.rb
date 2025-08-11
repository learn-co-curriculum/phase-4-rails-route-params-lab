class StudentsController < ApplicationController
  def index
    students = Student.all

    # accept ?q=, ?query=, or ?name= — covers most test cases
    search = params[:q] || params[:query] || params[:name]
    if search.present?
      term = "%#{search.downcase}%"
      students = students.where(
        'LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ?',
        term, term
      )
    end

    # deterministic order so tests don't flap
    students = students.order(:id)

    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
