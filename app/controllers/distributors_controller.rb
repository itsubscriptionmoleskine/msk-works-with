class DistributorsController < ApplicationController

  before_action :set_distributor, only: [:show, :edit, :update, :destroy]

  def index
    @distributors = Distributor.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @distributors}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @distributor}
    end
  end

  def new
    @distributor = Distributor.new
  end

  def edit
  end

  def create
    @distributor = Distributor.new(distributor_params)
    respond_to do |format|
      if @distributor.save
        format.html { redirect_to @distributor, notice: 'Distributor was successfully created.' }
        format.json { render :show, status: :created, location: @distributor }
      else
        format.html { render :new }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @distributor.update(distributor_params)
        format.html { redirect_to @distributor, notice: 'Distributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributor }
      else
        format.html { render :edit }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @distributor.destroy
    respond_to do |format|
      format.html { redirect_to distributors_url, notice: 'Distributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_distributor
    @distributor = Distributor.find(params[:id])
  end

  def distributor_params
    params.require(:distributor).permit(:name, :badge_image_url, :is_live, :icon_id)
  end
end