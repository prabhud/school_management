class SectionsController < ApplicationController
  def index
    @search = Section.search(params[:search])
    @sections = @search.order(:sec_name).paginate(:per_page => per_page, :page => page)
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(params[:section])
    if @section.save
      redirect_to sections_url, :flash => {:success => "Successfully created section. #{view_context.link_to(@section.sec_name, section_path(@section))}.".html_safe }
    else
      render :action => 'new'
    end
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    if @section.update_attributes(params[:section])
      redirect_to sections_url, :flash => {:success => "Successfully updated section. #{view_context.link_to(@section.sec_name, section_path(@section))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to sections_url, :flash => {:success => "Successfully destroyed section.".html_safe}
  end
end
