class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :tags, as: :taggable
  
  scope :featured, -> { where(featured: true) }
  default_scope -> { where("published_at <= ?", Time.now).order("published_at DESC")}
  attr_accessible :author, :title, :summary, :body, :featured, :published_at
  validates :author, :body, presence: true
  validates :title,
            length: { in: 6..65 }, 
            presence: true,
            uniqueness: true
  # validate :published_at_is_in_the_future, on: :create

  private

  def published_at_is_in_the_future
    unless published_at >=Time.now
    errors.add(:published_at, "Published at must be in the future")
    end
  end
end
