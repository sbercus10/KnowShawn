class Project < ActiveRecord::Base
  attr_accessible :date, :description, :name, :tags_attributes, :tools_attributes, :pics_attributes
  has_many :tags, as: :taggable
  has_many :pics, as: :picable
  has_many :tools
  
    # :pics, as: :picable, dependent: :destroy

  # has_attached_file :pics, 
  #   styles: { large: "600x600>", 
  #             medium: "300x300>", 
  #             small: "100x100>",
  #             tiny: "30x30>"},
  #   default_url: "/assets/:attachment/:style.png"

  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true  
  accepts_nested_attributes_for :tools, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :pics, reject_if: :all_blank, allow_destroy: true

  validates :name, :description, presence: true
end

