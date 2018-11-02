class ChargesController < ApplicationController
  def create
    @item = Item.find(params[:item_id]) 

    duration = params[:duration].to_i

    # Calculate total price
    if params[:duration_for_hire] == "hour"
      @total = @item.price_per_hour * duration
    end

    if params[:duration_for_hire] == "day"
      @total = @item.price_per_day * duration
    end

    if params[:duration_for_hire] == "week"
      @total = @item.price_per_week * duration
    end

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @total*100,
      :description => @item.name,
      :currency    => 'AUD'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
     
end
