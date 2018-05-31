class ContactUsMailer < ApplicationMailer
  default from: 'outreach@lilypad-energy.com'

  def outreach_email(contact_info)
    @first_name = contact_info[:first_name]
    @last_name = contact_info[:last_name]
    @email = contact_info[:email]
    @content = contact_info[:content]
    mail(to: 'outreach@lilypad-energy.com', subject: 'Lilypad Energy Contact Form')
  end

  def confirmation_email(contact_info)
    @first_name = contact_info[:first_name]
    @content = contact_info[:content]
    mail(to: contact_info[:email], subject: "We got your message.")
  end

end