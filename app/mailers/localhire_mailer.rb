class LocalhireMailer < ApplicationMailer
    def new_booking
        @user = params[:user]
       # @url  = 'http://example.com/login'
        mail(to: @user.email, subject: 'Congratulations on your booking!')
    end
end


#when testing, update these files with your details

#mailers/localhire_mailer (this one)
#config/environments/development :

            ##details from Domain details in mailgun

            # config.action_mailer.delivery_method = :smtp
            #   config.action_mailer.smtp_settings = {
            #   address:              'smtp.mailgun.org',
            #   port:                 587,
            #   domain:               'sandbox78d2a7ae0e674371bca4da4f09177c3d.mailgun.org',
            #   user_name:            'postmaster@sandbox78d2a7ae0e674371bca4da4f09177c3d.mailgun.org',
            #   password:             'be96d9e54b2e8d6ff11bce2969c56bdf-4836d8f5-18d08496',
            #   authentication:       'plain',
            #   enable_starttls_auto: true }
