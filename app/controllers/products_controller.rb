class ProductsController < ApplicationController
<<<<<<< HEAD

	before_action :set_product, only: [:show, :edit, :update, :destroy]
  #before_action :find_model
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @product }
    end
  end

=======
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @search = Product.search(params[:q])
    @products = @search.result
    @search.build_condition
  end

  # GET /products/1
  # GET /products/1.json
  def show
    puts params
  end

  # GET /products/new
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
  def new
    @product = Product.new
  end

<<<<<<< HEAD
  def edit
  end

=======
  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: 'Product was successfully updated.' }
=======
  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

<<<<<<< HEAD
=======
  # DELETE /products/1
  # DELETE /products/1.json
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
<<<<<<< HEAD

=======
    # Use callbacks to share common setup or constraints between actions.
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
    def set_product
      @product = Product.find(params[:id])
    end

<<<<<<< HEAD
    def product_params
      params.require(:product).permit(:name, :subdomain, :content)
=======
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price)
>>>>>>> b465acf78cf81e0fd56d2dcf73347ec3ba39c22b
    end
end
