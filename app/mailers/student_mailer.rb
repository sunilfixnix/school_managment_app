class StudentMailer < ApplicationMailer
		default from: "mandiwalsunil@gmail.com"

	def sample_email(student)

		@student = student

		mail(to: @student.email, subject: 'Confirmation Mail')
end
end
