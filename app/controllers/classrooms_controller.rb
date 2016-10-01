class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @classrooms = Classroom.all
    #@classrooms = Classroom.joins(:student).joins(:course)
    respond_with(@classrooms)
  end

  def show
    respond_with(@classroom)
  end

  def new
    status = 1
    @classroom = Classroom.new
    @courses = Course.all
    @students = Student.all
    respond_with(@classroom)
  end

  def edit
    @courses = Course.all
    @students = Student.all

  end

  def create
    @classroom = Classroom.new(classroom_params)

    student_id = @classroom.student_id 
    course_id = @classroom.course_id

    if Classroom.exists?(['student_id LIKE ? AND course_id LIKE ?', student_id, course_id ])
      @classroom = Classroom.new
      @courses = Course.all
      @students = Student.all
      flash[:error] = t('duplicate_class_error')
      render 'new'
    else
      @classroom.save
      respond_with(@classroom)
    end 
    
  end

  def update
    student_id = @classroom.student_id 
    course_id = @classroom.course_id

    if Classroom.exists?(['student_id LIKE ? AND course_id LIKE ?', student_id, course_id ])
      @classroom = Classroom.new
      @courses = Course.all
      @students = Student.all
      flash[:error] = t('duplicate_class_error')
      render 'new'
    else
      @classroom.update(classroom_params)
      respond_with(@classroom)
    end

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

end
