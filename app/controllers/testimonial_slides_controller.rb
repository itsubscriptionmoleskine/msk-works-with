class TestimonialSlidesController < ApplicationController

  before_action :set_testimonial_slide, only: [:show, :edit, :update, :destroy]

  def index
    @testimonial_slides = TestimonialSlide.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @testimonial_slides}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @testimonial_slide}
    end
  end

  def new
    @testimonial_slide = TestimonialSlide.new
  end

  def edit
  end

  def create
    @testimonial_slide = TestimonialSlide.new(testimonial_slide_params)
    respond_to do |format|
      if @testimonial_slide.save
        format.html { redirect_to @testimonial_slide, notice: 'TestimonialSlide was successfully created.' }
        format.json { render :show, status: :created, location: @testimonial_slide }
      else
        format.html { render :new }
        format.json { render json: @testimonial_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @testimonial_slide.update(testimonial_slide_params)
        format.html { redirect_to @testimonial_slide, notice: 'TestimonialSlide was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonial_slide }
      else
        format.html { render :edit }
        format.json { render json: @testimonial_slide.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testimonial_slide.destroy
    respond_to do |format|
      format.html { redirect_to testimonial_slides_url, notice: 'TestimonialSlide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_testimonial_slide
    @testimonial_slide = TestimonialSlide.find(params[:id])
  end

  def testimonial_slide_params
    params.require(:testimonial_slide).permit(:image_url, :caption, :testimonial_id, :sequence_number, :is_live)
  end
end