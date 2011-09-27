class SchoolsController < ApplicationController
  def index
    @search = School.search(params[:search])
    @schools = @search.order(:sc_name).paginate(:per_page => per_page, :page => page)
  end

  def show
    @school = School.find(params[:id])
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      redirect_to schools_url, :flash => {:success => "Successfully created School #{view_context.link_to(@school.sc_name, school_path(@school))}.".html_safe }
    else
      render :action => 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      redirect_to schools_url, :flash => {:success => "Successfully updated School #{view_context.link_to(@school.sc_name, school_path(@school))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_url, :flash => {:success => "Successfully destroyed School.".html_safe}
  end
end
