class ContactUsMailer < ApplicationMailer

  def outreach_email(contact_info)
    @first_name = contact_info.first_name
    @content = contact_info.content
    mail(to: contact_info.email, subject: 'Lilypad Energy Contact Form')
  end

  def confirmation_email(opt)
    @first_name = opt.first_name
  end

end
