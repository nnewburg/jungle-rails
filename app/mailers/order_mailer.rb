class OrderMailer < ActionMailer::Base
  default from: 'no-reply@jungle.com'

  def order_email(order)
    puts order
    @order = order
    @url  = 'http://example.com/login'
    mail(to: 'iloverails@google.com' , subject: 'Welcome to My Awesome Site')
  end
end