class LineItemsController < ApplicationController
  # Skip CSRF filter to allow caching forms in product pages since
  # CSRF not relevant for these cart interactions anyway.
  skip_before_action :verify_authenticity_token

  before_action :load_line_item, only: [:update, :destroy]

  def create
    @line_item = current_order.line_items.where(line_item_params).first_or_initialize(quantity: 0)
    @line_item.quantity += 1
    @line_item.save!
  end

  def update
    @line_item.update!(line_item_params)
  end

  def destroy
    @line_item.destroy!
  end

  private

  def load_line_item
    @line_item = LineItem.find(params[:id])
  end

  def line_item_params
    params.fetch(:line_item, {}).permit(:variant_id, :quantity)
  end
end