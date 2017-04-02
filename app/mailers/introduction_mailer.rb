class IntroductionMailer < ApplicationMailer
	default from: "Surana Sanitations <suranasanitations@gmail.com>"

	# Send Mail To Customer, thanking him to contact us and we will get back to him soon.
	def introduction_email(user)
	    @user = user
	    attachments['Introduction_Letter.pdf'] = File.read("#{Rails.root}/public/introduction_letter.pdf")
	    mail(to: @user['email'], subject: 'Greetings From Surana Sanitations!')
	end

	# Send Mail To Owner, and giving him the details of the user who tried to contact him.
	def contact_form(details)
		@details = details
		mail(to: 'suranagv@gmail.com', subject: 'Gaurav, A User Just Tried to contact you!')
	end
end
