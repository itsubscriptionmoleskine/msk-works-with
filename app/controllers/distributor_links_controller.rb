class DistributorLinksController < ApplicationController

  before_action :set_distributor_link, only: [:show, :edit, :update, :destroy]

  def index
    @distributor_links = DistributorLink.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @distributor_links}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @distributor_link}
    end
  end

  def new
    @distributor_link = DistributorLink.new
  end

  def edit
  end

  def create
    @distributor_link = DistributorLink.new(distributor_link_params)
    respond_to do |format|
      if @distributor_link.save
        format.html { redirect_to @distributor_link, notice: 'DistributorLink was successfully created.' }
        format.json { render :show, status: :created, location: @distributor_link }
      else
        format.html { render :new }
        format.json { render json: @distributor_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @distributor_link.update(distributor_link_params)
        format.html { redirect_to @distributor_link, notice: 'DistributorLink was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributor_link }
      else
        format.html { render :edit }
        format.json { render json: @distributor_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @distributor_link.destroy
    respond_to do |format|
      format.html { redirect_to distributor_links_url, notice: 'DistributorLink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_distributor_link
    @distributor_link = DistributorLink.find(params[:id])
  end

  def distributor_link_params
    params.require(:distributor_link).permit(:name, :description, :url, :is_live)
  end
end