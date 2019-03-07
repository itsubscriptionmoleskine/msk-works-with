class PartnersController < ApplicationController

  before_action :set_partner, only: [:show, :edit, :update, :destroy]

  def index
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Partners', partners_path
    @partners = Partner.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @partners}
    end
  end

  def show
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Partners', partners_path
    add_breadcrumb @partner.name, partner_path(@partner.slug)

    @partner_works_withs = []

    @partner.apps.each do |app|
      w = WorksWith.all.where(app_id: app.id)
      w.each do |ww|
        @partner_works_withs.append(ww)
      end
    end

    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @partner}
    end
  end

  def new
    @partner = Partner.new
  end

  def edit
  end

  def create
    @partner = Partner.new(partner_params)
    respond_to do |format|
      if @partner.save
        format.html { redirect_to @partner, notice: 'Partner was successfully created.' }
        format.json { render :show, status: :created, location: @partner }
      else
        format.html { render :new }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @partner.update(partner_params)
        format.html { redirect_to @partner, notice: 'Partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @partner }
      else
        format.html { render :edit }
        format.json { render json: @partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @partner.destroy
    respond_to do |format|
      format.html { redirect_to partners_url, notice: 'Partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_partner
    @partner = Partner.find_by(slug: params[:slug])
  end

  def partner_params
    params.require(:partner).permit(:name, :description, :promo_text, :url, :is_live, :logo_image_url, :slug)
  end
end