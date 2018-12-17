class OfferingsController < ApplicationController

  before_action :set_offering, only: [:show, :edit, :update, :destroy]

  def index
    @offerings = Offering.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @offerings}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @offering}
    end
  end

  def new
    @offering = Offering.new
  end

  def edit
  end

  def create
    @offering = Offering.new(offering_params)
    respond_to do |format|
      if @offering.save
        format.html { redirect_to @offering, notice: 'Offering was successfully created.' }
        format.json { render :show, status: :created, location: @offering }
      else
        format.html { render :new }
        format.json { render json: @offering.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @offering.update(offering_params)
        format.html { redirect_to @offering, notice: 'Offering was successfully updated.' }
        format.json { render :show, status: :ok, location: @offering }
      else
        format.html { render :edit }
        format.json { render json: @offering.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @offering.destroy
    respond_to do |format|
      format.html { redirect_to offerings_url, notice: 'Offering was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_offering
    @offering = Offering.find(params[:id])
  end

  def offering_params
    params.require(:offering).permit(:name, :description, :shop_link, :product_image, :is_live)
  end
end