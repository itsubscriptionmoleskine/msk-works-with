class AppStoresController < ApplicationController

  before_action :set_app_store, only: [:show, :edit, :update, :destroy]

  def index
    @app_stores = AppStore.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @app_stores}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @app_store}
    end
  end

  def new
    @app_store = AppStore.new
  end

  def edit
  end

  def create
    @app_store = AppStore.new(app_store_params)
    respond_to do |format|
      if @app_store.save
        format.html { redirect_to @app_store, notice: 'AppStore was successfully created.' }
        format.json { render :show, status: :created, location: @app_store }
      else
        format.html { render :new }
        format.json { render json: @app_store.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @app_store.update(app_store_params)
        format.html { redirect_to @app_store, notice: 'AppStore was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_store }
      else
        format.html { render :edit }
        format.json { render json: @app_store.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @app_store.destroy
    respond_to do |format|
      format.html { redirect_to app_stores_url, notice: 'AppStore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_app_store
    @app_store = AppStore.find(params[:id])
  end

  def app_store_params
    params.require(:app_store).permit(:name, :badge_image_url, :is_live, :icon_id)
  end
end