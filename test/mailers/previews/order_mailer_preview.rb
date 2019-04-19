class OrderMailerPreview < ActionMailer::Preview
  def new_order
    order = Order.last
    OrderMailer.order_email(order).deliver
  end
end