class AppsController < ApplicationController

  before_action :set_app, only: [:show, :edit, :update, :destroy]

  def index
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Apps', apps_path
    @apps = App.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @apps}
    end
  end

  def show
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Apps', apps_path
    add_breadcrumb @app.name, apps_path(@app.slug)
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @app}
    end
  end

  def new
    @app = App.new
  end

  def edit
  end

  def create
    @app = App.new(app_params)
    respond_to do |format|
      if @app.save
        format.html { redirect_to @app, notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to @app, notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_app
    @app = App.find_by(slug: params[:slug])
  end

  def app_params
    params.require(:app).permit(:name, :description, :info_url, :is_live, :developer_id, :slug)
  end
end