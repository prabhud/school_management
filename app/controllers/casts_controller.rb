class CastsController < ApplicationController
  def index
    @search = Cast.search(params[:search])
    @casts = @search.order(:cast_name).paginate(:per_page => per_page, :page => page)
  end

  def show
    @cast = Cast.find(params[:id])
  end

  def new
    @cast = Cast.new
  end

  def create
    @cast = Cast.new(params[:cast])
    if @cast.save
      redirect_to @cast, :notice => "Successfully created cast."
    else
      render :action => 'new'
    end
  end

  def edit
    @cast = Cast.find(params[:id])
  end

  def update
    @cast = Cast.find(params[:id])
    if @cast.update_attributes(params[:cast])
      redirect_to @cast, :notice  => "Successfully updated cast."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @cast = Cast.find(params[:id])
    @cast.destroy
    redirect_to casts_url, :notice => "Successfully destroyed cast."
  end
end
