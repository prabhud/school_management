class SubCastsController < ApplicationController
  def index
    @search = SubCast.search(params[:search])
    @sub_casts = @search.includes(:cast).order(:subcast_name).paginate(:per_page => per_page, :page => page)
  end

  def show
    @sub_cast = SubCast.find(params[:id])
  end

  def new
    @sub_cast = SubCast.new
  end

  def create
    @sub_cast = SubCast.new(params[:sub_cast])
    if @sub_cast.save
      redirect_to sub_casts_url, :flash => {:success => "Successfully created sub cast. #{view_context.link_to(@sub_cast.subcast_name, sub_cast_path(@sub_cast))}.".html_safe }
    else    
      render :action => 'new'
    end
  end

  def edit
    @sub_cast = SubCast.find(params[:id])
  end

  def update
    @sub_cast = SubCast.find(params[:id])
    if @sub_cast.update_attributes(params[:sub_cast])
      redirect_to sub_casts_url, :flash => {:success => "Successfully updated sub cast. #{view_context.link_to(@sub_cast.subcast_name, sub_cast_path(@sub_cast))}.".html_safe }
    else
      render :action => 'edit'
    end
  end

  def destroy
    @sub_cast = SubCast.find(params[:id])
    @sub_cast.destroy
    redirect_to sub_casts_url, :flash => {:success => "Successfully destroyed sub cast."}.html_safe
  end
end
