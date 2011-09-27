class EmpTypesController < ApplicationController
  def index
    @search = EmpType.search(params[:search])
    @emp_types = @search.order(:emptype_name).paginate(:per_page => per_page, :page => page)
  end

  def show
    @emp_type = EmpType.find(params[:id])
  end

  def new
    @emp_type = EmpType.new
  end

  def create
    @emp_type = EmpType.new(params[:emp_type])
    if @emp_type.save
      redirect_to emp_types_url, :flash => {:success => "Successfully created Employee Type #{view_context.link_to(@emp_type.emptype_name, emp_type_path(@emp_type))}.".html_safe }
    else
      render :action => 'new'
    end
  end

  def edit
    @emp_type = EmpType.find(params[:id])
  end

  def update
    @emp_type = EmpType.find(params[:id])
    if @emp_type.update_attributes(params[:emp_type])
      redirect_to emp_types_url, :flash => {:success => "Successfully updated Employee Type #{view_context.link_to(@emp_type.emptype_name, emp_type_path(@emp_type))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @emp_type = EmpType.find(params[:id])
    @emp_type.destroy
    redirect_to emp_types_url, :flash => {:success => "Successfully destroyed Employee Type.".html_safe}
  end
end
