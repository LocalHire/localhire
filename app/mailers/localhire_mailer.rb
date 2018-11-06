class LocalhireMailer < ApplicationMailer
    def new_item
        @user = params[:user]
        @item = params[:item]
       # @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'New Item Uploaded!')
    end
end


#when testing, update these files with your details

#mailers/localhire_mailer (this one)
#config/environments/development : update details from Domain details in mailgun
