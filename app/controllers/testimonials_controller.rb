class TestimonialsController < ApplicationController

  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  def index
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Testimonials', testimonials_path
    @testimonials = Testimonial.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @testimonials}
    end
  end

  def show
    add_breadcrumb 'Home', home_path
    add_breadcrumb 'Testimonials', testimonials_path
    add_breadcrumb @testimonial.title, testimonial_path(@testimonial.id)
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @testimonial}
    end
  end

  def new
    @testimonial = Testimonial.new
  end

  def edit
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully created.' }
        format.json { render :show, status: :created, location: @testimonial }
      else
        format.html { render :new }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @testimonial.update(testimonial_params)
        format.html { redirect_to @testimonial, notice: 'Testimonial was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @testimonial.destroy
    respond_to do |format|
      format.html { redirect_to testimonials_url, notice: 'Testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_testimonial
    @testimonial = Testimonial.find(params[:id])
  end

  def testimonial_params
    params.require(:testimonial).permit(:title, :description, :works_with_id, :is_live, :video_embed, :promo_text,
                                        :promo_image_url, :promo_image_url_cache, :publish_date, :slug)
  end
end