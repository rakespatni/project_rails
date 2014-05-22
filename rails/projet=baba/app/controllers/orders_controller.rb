class OrdersController < ApplicationController
def new_order
@order=Order.new
end
 def createa
   @order=Order.new(params[:order])
   if @order.save
     redirect_to "/orders/#{@order.id}" 
   else
    render :template=>"/orders/new_order"
   end
 end
 def show_order
 @order=Order.find(params[:id])
 end
 def show_my_order
  @pass=session[:x]
  @order=Order.find(:all,:conditions=>["user_id='#{@pass}' "])
 end
end
