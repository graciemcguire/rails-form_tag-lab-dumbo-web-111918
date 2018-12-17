class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    byebug
    @student = Student.create(first_name:params[:student][:first_name],last_name:params[:student][:last_name])

    redirect_to @student
  end

  def update
    @student.update(first_name:params[:first_name],last_name:params[:last_name])

    redirect_to @student
  end

  private
  def find_student
    @student = Student.find(params[:id])
  end

end
