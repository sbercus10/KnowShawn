class Post < ActiveRecord::Base
  scope :featured, -> { where(featured: true) }
  default_scope -> { where("published_at <= ?", Time.now).order("published_at DESC")}
  attr_accessible :author, :body, :featured, :published_at, :title

end
