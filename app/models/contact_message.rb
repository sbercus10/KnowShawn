class ContactMessage < ActiveRecord::Base
  attr_accessible :body, :email, :name, :subject, :topic

  validates :email, :name, presence: true

  after_create :send_contact_me_email

  private
  
  def send_contact_me_email
    ContactMailer.contact_me(self).deliver
  end
end
