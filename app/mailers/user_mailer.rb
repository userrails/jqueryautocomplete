class UserMailer < ActionMailer::Base
  default from: "from@example.com"

	def welcome_email
		@message="Hi siv, thanks for using this service"
		attachments['terms.pdf'] = File.read("#{Rails.root}/public/mail/terms.pdf")
		mail(:to => 'crystal.badu@gmail.com', :subject => @message)
	end
end
