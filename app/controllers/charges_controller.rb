class ChargesController < ApplicationController
  def create
    @product = Product.find(params[:product_id]) 
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      #we modified amount and description correspondelly. 
      :amount      => @product.price*params[:quantity].to_i,
      :description => @product.title,
      :currency    => 'AUD'
    )


# under here i should consider adding in the booking system GUY-!!!




    # def new
    # end

    # def create

    #     @amount = params[:amount]


    #     # get the type of price (week, day, hour) params => duration_for_hire

    #     # get the amount of that params => duration

    #     # make a total @amount variable for stripe using an if statement

    #     # store the values into the charges
        

    #     #look up the item
    #     # @item = Item.find(params[:id])
    #     # @amount = @amount.gsub('$', '').gsub(',', '')
      
    #     begin
    #       @amount = Float(@amount).round(2)



    #     rescue
    #       flash[:error] = 'Charge not completed. Please enter a valid amount in AUD ($).'
    #       redirect_to new_charge_path
    #       return
    #     end
      
    #     @amount = (@amount * 100).to_i # Must be an integer!
      
    #     if @amount < 100
    #       flash[:error] = 'Charge not completed. Booking amount must be at least $1.'
    #       redirect_to new_charge_path
    #       return
    #     end
      
    #     Stripe::Charge.create(
    #       :amount => @amount,
    #       :currency => 'aud',
    #       :source => params[:stripeToken],
    #       :description => @item.name
    #     )
      
    #     rescue Stripe::CardError => e
    #       flash[:error] = e.message
    #       redirect_to new_charge_path
    #     end
     
end
