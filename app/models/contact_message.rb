class ContactMessage 
  include ActiveModel::Validations
  include ActiveModel::Conversion 
  extend ActiveModel::Naming

  attr_accessor :body, :email, :name, :subject, :topic
  validates :email, :name, :subject, :body, presence: true

  def initialize(attributes = {}) 
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end
