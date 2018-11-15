class ExampleImagesController < ApplicationController

  before_action :set_example_image, only: [:show, :edit, :update, :destroy]

  def index
    @example_images = ExampleImage.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @example_images}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @example_image}
    end
  end

  def new
    @example_image = ExampleImage.new
  end

  def edit
  end

  def create
    @example_image = ExampleImage.new(example_image_params)
    respond_to do |format|
      if @example_image.save
        format.html { redirect_to @example_image, notice: 'ExampleImage was successfully created.' }
        format.json { render :show, status: :created, location: @example_image }
      else
        format.html { render :new }
        format.json { render json: @example_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @example_image.update(example_image_params)
        format.html { redirect_to @example_image, notice: 'ExampleImage was successfully updated.' }
        format.json { render :show, status: :ok, location: @example_image }
      else
        format.html { render :edit }
        format.json { render json: @example_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @example_image.destroy
    respond_to do |format|
      format.html { redirect_to example_images_url, notice: 'ExampleImage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_example_image
    @example_image = ExampleImage.find(params[:id])
  end

  def example_image_params
    params.require(:example_image).permit(:name, :description, :url, :is_live)
  end
end