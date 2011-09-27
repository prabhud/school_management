class StandardsController < ApplicationController
  def index
    @search = Standard.search(params[:search])
    @standards = @search.order(:std_name_int).paginate(:per_page => per_page, :page => page)
  end

  def show
    @standard = Standard.find(params[:id])
  end

  def new
    @standard = Standard.new
  end

  def create
    @standard = Standard.new(params[:standard])
    if @standard.save
      redirect_to standards_url, :flash => {:success => "Successfully created standard. #{view_context.link_to(@standard.std_name_str, standard_path(@standard))}.".html_safe }
    else
      render :action => 'new'
    end
  end

  def edit
    @standard = Standard.find(params[:id])
  end

  def update
    @standard = Standard.find(params[:id])
    if @standard.update_attributes(params[:standard])
      redirect_to standards_url, :flash => {:success => "Successfully updated standard. #{view_context.link_to(@standard.std_name_str, standard_path(@standard))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @standard = Standard.find(params[:id])
    @standard.destroy
    redirect_to standards_url,:flash => {:success => "Successfully destroyed standard."}.html_safe
  end
end
