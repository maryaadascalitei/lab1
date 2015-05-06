class UserMailer < ApplicationMailer
	def welcome_email(user)
		@user=user
		@url='http://ex.com/login'

		file=File.join(Rails.root,'app','test.txt')
		 attachments['test.txt']=File.read(file)
		mail(to:user,
			subject:'Subiect mail')

	end
end
