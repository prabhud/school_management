class StudPreScDetailsController < ApplicationController
  def index
    @stud_pre_sc_details = StudPreScDetail.all
  end

  def show
    @stud_pre_sc_detail = StudPreScDetail.find(params[:id])
  end

  def new
    @stud_pre_sc_detail = StudPreScDetail.new
  end

  def create
    @stud_pre_sc_detail = StudPreScDetail.new(params[:stud_pre_sc_detail])
    if @stud_pre_sc_detail.save
      redirect_to @stud_pre_sc_detail, :notice => "Successfully created stud pre sc detail."
    else
      render :action => 'new'
    end
  end

  def edit
    @stud_pre_sc_detail = StudPreScDetail.find(params[:id])
  end

  def update
    @stud_pre_sc_detail = StudPreScDetail.find(params[:id])
    if @stud_pre_sc_detail.update_attributes(params[:stud_pre_sc_detail])
      redirect_to @stud_pre_sc_detail, :notice  => "Successfully updated stud pre sc detail."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @stud_pre_sc_detail = StudPreScDetail.find(params[:id])
    @stud_pre_sc_detail.destroy
    redirect_to stud_pre_sc_details_url, :notice => "Successfully destroyed stud pre sc detail."
  end
end
