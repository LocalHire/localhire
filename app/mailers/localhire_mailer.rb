class LocalhireMailer < ApplicationMailer
    def new_item
        @user = params[:user]
        @item = params[:item]
       
        mail(to: @user.email, subject: 'New Item Uploaded!')
    end

    def new_booking_user
        @user = params[:user]
        @item = params[:item]
       
        mail(to: @user.email, subject: 'New Booking Made!')
    end

    def new_booking_lender
        @user = params[:user]
        @item = params[:item]
        @lender = @item.lender.user
        mail(to: @lender.user.email, subject: 'Your Item is Booked!')
    end
end


#when testing, update these files with your details

#mailers/localhire_mailer (this one)
#config/environments/development : update details from Domain details in mailgun
