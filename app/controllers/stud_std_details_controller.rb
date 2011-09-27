class StudStdDetailsController < ApplicationController
  def index
    @stud_std_details = StudStdDetail.all
  end

  def show
    @stud_std_detail = StudStdDetail.find(params[:id])
  end

  def new
    @stud_std_detail = StudStdDetail.new
  end

  def create
    @stud_std_detail = StudStdDetail.new(params[:stud_std_detail])
    if @stud_std_detail.save
      redirect_to @stud_std_detail, :notice => "Successfully created stud std detail."
    else
      render :action => 'new'
    end
  end

  def edit
    @stud_std_detail = StudStdDetail.find(params[:id])
  end

  def update
    @stud_std_detail = StudStdDetail.find(params[:id])
    if @stud_std_detail.update_attributes(params[:stud_std_detail])
      redirect_to @stud_std_detail, :notice  => "Successfully updated stud std detail."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @stud_std_detail = StudStdDetail.find(params[:id])
    @stud_std_detail.destroy
    redirect_to stud_std_details_url, :notice => "Successfully destroyed stud std detail."
  end
end
