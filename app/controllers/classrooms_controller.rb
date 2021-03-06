class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]
  before_action :set_students_and_courses, only: [:new, :create, :edit, :update]
  respond_to :html

  def index
    @classrooms = Classroom.all
    respond_with(@classrooms)
  end

  def show
    respond_with(@classroom)
  end

  def new
    @classroom = Classroom.new
    respond_with(@classroom)
  end

  def edit
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @classroom.save
    respond_with(@classroom)
    
  end

  def update
    @classroom.update(classroom_params)
    respond_with(@classroom)
  end

  def destroy
    @classroom.destroy
    respond_with(@classroom)
  end

  private
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end


    def classroom_params
      params.require(:classroom).permit(:student_id, :course_id, :entry_at)
    end

    def set_students_and_courses
      @courses = Course.where(status: 1)
      @students = Student.where(status: 1)
    end

end
