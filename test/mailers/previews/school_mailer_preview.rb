# Preview all emails at http://localhost:3000/rails/mailers/school_mailer
class SchoolMailerPreview < ActionMailer::Preview
 def sample_mail_preview
    ExampleMailer.sample_email(School.first)
  end
end
