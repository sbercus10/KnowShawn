class Pic < ActiveRecord::Base
  belongs_to :picable, polymorphic: true
  attr_accessible :name, :image

  has_attached_file :image, 
  styles: { large: "600x600>", 
    medium: "300x300>", 
    small: "100x100>",
    tiny: "30x30>"}

end
