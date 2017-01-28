class ProductsController < ApplicationController
  before_action :load_product, only: :show

  def show
  end

  private

  def load_product
    @product = Product.find(params[:id])
  end
end