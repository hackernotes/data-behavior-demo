class ApplicationController < ActionController::Base
  include ApplicationHelper
  
  protect_from_forgery with: :exception

  before_action :load_products

  private

  def load_products
    @products = Product.all
  end
end
