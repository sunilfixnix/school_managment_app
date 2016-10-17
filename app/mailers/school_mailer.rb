class SchoolMailer < ApplicationMailer
	default from: "mandiwalsunil@gmail.com"

	def sample_email(school)

		@school = school

		mail(to: @school.email, subject: 'Confirmation Mail')
end
end