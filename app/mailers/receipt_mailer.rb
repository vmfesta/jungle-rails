class ReceiptMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def send_email(order)
    @url  = 'http://example.com/login'
    @line_item = LineItem.where("order_id = ?",order.id)
    @order = order
    mail(to: order.email, subject: 'Order: ' + order.id.to_s)
  end
end
