# Preview all emails at http://localhost:3000/rails/mailers/introduction_mailer
class IntroductionMailerPreview < ActionMailer::Preview

	def introduction_email(user = {'name':"Neeraj Surana",'email':"surananeeraj92@gmail.com"})
	    user = {'name':'Neeraj Surana','email':'surananeeraj92@gmail.com'}
	    IntroductionMailer.introduction_email(user)
	    # attachments['Introduction_Letter.pdf'] = File.read("#{Rails.root}/public/introduction_letter.pdf")
	    # mail(to: @user['email'], subject: 'Greetings From Surana Sanitations!')
	end

end
