class UserMailer < ActionMailer::Base
  default from: "coachdillon@gmail.com"
  
  def order_placed(order)
    @order = order
    mail(to: order.account_manager.email, subject: 'Order placed')
  end
end
