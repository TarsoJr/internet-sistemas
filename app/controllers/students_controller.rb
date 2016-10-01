class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html, :js

  def index
    @students = Student.all
    respond_with(@students)
  end

  def indexjs
    @students = Student.all
    @student = Student.new
    respond_with(@students)
  end

  def show
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  def search
    @student_searched = params[:name,:register_number]
    @studens_finded = Student.where "name like ? OR register_number like ?", 
                "%#{@student_searched}%", "%#{@student_searched}%"
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
