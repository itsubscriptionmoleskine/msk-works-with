class UseCasesController < ApplicationController

  before_action :set_use_case, only: [:show, :edit, :update, :destroy]

  def index
    @use_cases = UseCase.all.where(is_live: true)
    respond_to do |format|
      format.html { render :index}
      format.json { render :json => @use_cases}
    end
  end

  def show
    respond_to do |format|
      format.html { render :show}
      format.json { render :json => @use_case}
    end
  end

  def new
    @use_case = UseCase.new
  end

  def edit
  end

  def create
    @use_case = UseCase.new(use_case_params)
    respond_to do |format|
      if @use_case.save
        format.html { redirect_to @use_case, notice: 'UseCase was successfully created.' }
        format.json { render :show, status: :created, location: @use_case }
      else
        format.html { render :new }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @use_case.update(use_case_params)
        format.html { redirect_to @use_case, notice: 'UseCase was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_case }
      else
        format.html { render :edit }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @use_case.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url, notice: 'UseCase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_use_case
    @use_case = UseCase.find(params[:id])
  end

  def use_case_params
    params.require(:use_case).permit(:title, :description, :works_with_id, :is_live)
  end
end