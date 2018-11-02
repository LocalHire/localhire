class ChargesController < ApplicationController

    def new
    end

    def create

        raise
        @amount = params[:amount]


        # get the type of price (week, day, hour) params => duration_for_hire
        # get the amount of that params => duration
        # make a total @amount variable for stripe using an if statement
        # store the values into the charges
        

        #look up the item
        @item = Item.find(params[:id])
        # @amount = @amount.gsub('$', '').gsub(',', '')
      
        begin
          @amount = Float(@amount).round(2)
        rescue
          flash[:error] = 'Charge not completed. Please enter a valid amount in AUD ($).'
          redirect_to new_charge_path
          return
        end
      
        @amount = (@amount * 100).to_i # Must be an integer!
      
        if @amount < 100
          flash[:error] = 'Charge not completed. Booking amount must be at least $1.'
          redirect_to new_charge_path
          return
        end
      
        Stripe::Charge.create(
          :amount => @amount,
          :currency => 'aud',
          :source => params[:stripeToken],
          :description => @item.name
        )
      
        rescue Stripe::CardError => e
          flash[:error] = e.message
          redirect_to new_charge_path
        end
     
# from original stripe payment implementation
    # def create
    #     #Amount in cents
    #     @amount = 500

    #     customer = Stripe::Customer.create(
    #         :email          =>  params[:stripeEmail],
    #         :source         =>  params[:stripeToken]
       
    #     )

    #     charge = Stripe::Charge.create(
    #         :customer       =>  customer.id,
    #         :amount         =>  @amount,
    #         :description    =>  'Rails Stripe customer',
    #         :currency       =>  'aud'
    #     )

    #     rescue Stripe::CardError => e
    #         flash[:error] = e.message
    #         redirect_to new_charge_path
    # end

end
