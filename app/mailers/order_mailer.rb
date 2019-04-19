class OrderMailer < ActionMailer::Base
  default from: 'no-reply@jungle.com'

  def order_email(order)
    puts order
    @order = order
    @url  = 'http://example.com/login'
    mail(to: order.email , subject: "Thanks for your Jungle Order #{order.id}")
  end
end