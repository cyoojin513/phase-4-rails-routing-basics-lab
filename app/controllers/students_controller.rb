class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    studentsOrderedByGrade = Student.order(:grade).reverse
    render json: studentsOrderedByGrade
  end

  def highest_grade
    highestGradedStudent = Student.order(:grade).reverse.first
    render json: highestGradedStudent
  end
end
