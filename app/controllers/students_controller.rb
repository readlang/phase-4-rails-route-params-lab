class StudentsController < ApplicationController

  # def index
  #   students = Student.all
  #   render json: students
  # end

  def index
    student_first = Student.find_by(first_name: params["name"].capitalize )
    student_last = Student.find_by(last_name: params["name"].capitalize )
    array = []
    if student_first
      array << student_first
    end
    if student_last
      array << student_last
    end

    render json: array
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
