module ApplicationHelper
  def current_order
    @current_order ||= begin
      order = Order.find_by(id: session[:order_id])

      if order.nil?
        order = Order.create!
        session[:order_id] = order.id
      end

      order
    end
  end
end
