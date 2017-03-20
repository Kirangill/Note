class FactoriesController < ApplicationController

  before_action :set_factory, only: [:show, :edit, :update, :destroy]

  def index
    @factories = Factory.all
  end

  def show
    @factory = Factory.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @factory }
    end
  end

  def new
    @factory = Factory.new
  end

  def edit
  end

  def create
    @factory = current_model.factories.new(factory_params)

    respond_to do |format|
      if @factory.save
        format.html { redirect_to @factory, notice: 'Factory was successfully created.' }
        format.json { render :show, status: :created, location: @factory }
      else
        format.html { render :new }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @factory.update(factory_params)
        format.html { redirect_to @factory, notice: 'Factory was successfully updated.' }
        format.json { render :show, status: :ok, location: @factory }
      else
        format.html { render :edit }
        format.json { render json: @factory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @factory.destroy
    respond_to do |format|
      format.html { redirect_to factories_url, notice: 'Factory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_factory
      @factory = Factory.find(params[:id])
    end

    def factory_params
      params.require(:factory).permit(:name, :location, :model_id)
    end
end
