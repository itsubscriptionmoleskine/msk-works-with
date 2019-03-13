class AppStoreLinksController < ApplicationController

  before_action :set_app_store_link, only: [:show, :edit, :update, :destroy]

  def index
    @app_store_links = AppStoreLink.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @app_store_links}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @app_store_link}
    end
  end

  def new
    @app_store_link = AppStoreLink.new
  end

  def edit
  end

  def create
    @app_store_link = AppStoreLink.new(app_store_link_params)
    respond_to do |format|
      if @app_store_link.save
        format.html { redirect_to @app_store_link, notice: 'AppStoreLink was successfully created.' }
        format.json { render :show, status: :created, location: @app_store_link }
      else
        format.html { render :new }
        format.json { render json: @app_store_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @app_store_link.update(app_store_link_params)
        format.html { redirect_to @app_store_link, notice: 'AppStoreLink was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_store_link }
      else
        format.html { render :edit }
        format.json { render json: @app_store_link.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @app_store_link.destroy
    respond_to do |format|
      format.html { redirect_to app_store_links_url, notice: 'AppStoreLink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_app_store_link
    @app_store_link = AppStoreLink.find(params[:id])
  end

  def app_store_link_params
    params.require(:app_store_link).permit(:link, :app_store_id, :app_id, :is_live)
  end
end