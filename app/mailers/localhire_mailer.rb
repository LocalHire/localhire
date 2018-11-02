class LocalhireMailer < ApplicationMailer
    def new_booking
        @user = params[:user]
       # @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Congratulations on your booking!')
    end
end


#when testing, update these files with your details

#mailers/localhire_mailer (this one)
#config/environments/development : update details from Domain details in mailgun
