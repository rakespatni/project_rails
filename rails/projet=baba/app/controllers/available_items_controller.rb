class AvailableItemsController < ApplicationController
def avail_index
@item=AvailableItems.find(:all,:conditions=>["item_type='book'"])
end
def avail_show
@item=AvailableItems.find(params[:id])
session[:day]=@item.max_days
session[:item]=@item.name
@item_sess=session[:item]
session[:price]=@item.price
@price_sess=session[:price]

#@total=@price_sess*@item_sess
 
end
def phone_index
@item=AvailableItems.find(:all,:conditions=>["item_type='phone' "])
end

def misc
@item=AvailableItems.find(:all,:conditions=>["item_type='laptop' "])
end

def createa
# @t= params[:quantity] 
 
  @order=Order.new(params[:order])

 if @order.save
 #session[:z]=params[:name] 
  @idd=@order.id
  session[:i]=@idd
  
  @orders=Order.find(:all,:conditions=>["id='#{@idd}'"])
  
  session[:s]=@orders.size
  session[:days]=session[:day]
   for o in @orders
   session[:z]=o.quantity
   
   o.total_amount=session[:z]*session[:price]
   o.update_attributes(params[:o])
   end
   
   
   
   
     redirect_to "/orders/#{@order.id}" 
   else
    render :template=>"/orders/new_order"
   end
   #end
 end
 def edit
 @order=Order.find(params[:id])
 end
 def update
 @id=params[:id]
 @order=Order.find(params[:id])
 
 
 @ad=Order.find(:all,:conditions=>[" id=?",params[:id]])
 
  @order.update_attributes(params[:order])
  @ad=Order.find(:all,:conditions=>[" id='#{@id}'"])
  for a in @ad
 session[:q]=a.quantity
 a.total_amount=session[:q]*session[:price]
  a.update_attributes(params[:a])
 end
  redirect_to "/orders/#{@order.id }"
  
 end
 def destroy
 @ad=Order.find(params[:id])
 @ad.destroy
 redirect_to "/registrations/link"
 end
end
