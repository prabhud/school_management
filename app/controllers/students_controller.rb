class StudentsController < ApplicationController
  def index
    @search = Student.search(params[:search])
    @students = @search.includes(:sub_cast).order(:stud_firstname).paginate(:per_page => per_page, :page => page)
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.build_stud_pre_sc_detail
  end

  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to students_url, :flash => {:success => "Successfully created Student #{view_context.link_to(@student.stud_firstname, student_path(@student))}.".html_safe }
    else
      render :action => 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to students_url, :flash => {:success => "Successfully updated Student #{view_context.link_to(@student.stud_firstname, student_path(@student))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_url, :notice => "Successfully destroyed student."
  end
end
