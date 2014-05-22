class RegistrationsController < ApplicationController
  
  def disp
  end
 
 def new
  @registration=Registration.new
 end
 
 def create
   @registration=Registration.new(params[:registration])
   if @registration.save
     redirect_to "/registrations/#{@registration.id}" 
   else
    render :template=>"/registrations/new"
   end
   
 end
 def check
 @m=params[:name]
 @n=params[:email]
 @reg=Registration.find(:all,:conditions=>["name='#{@m}' and email='#{@n}'"])
session[:x]=params[:email]

 if @reg.size==0
  redirect_to"/registrations/err"
  else 
   redirect_to "/registrations/link"
 end

 end
def err
end
 def show
   @registration=Registration.find(params[:id])
 end
  def link
  session[:nam]=params[:name]
  @pas=params[:email]
  
  
  
  end
 
 def part
 end
end
