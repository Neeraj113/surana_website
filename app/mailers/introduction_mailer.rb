class IntroductionMailer < ApplicationMailer
	default from: "suranasanitations@gmail.com"

	def introduction_email(user)
	    @user = user
	    attachments['Introduction_Letter.pdf'] = File.read("#{Rails.root}/public/introduction_letter.pdf")
	    mail(to: @user['email'], subject: 'Greetings From Surana Sanitations!')
	end

	def contact_form(details)
		@details = details
		mail(to: 'suranagv@gmail.com', subject: 'Gaurav, A User Just Tried to contact you!')
	end
end
