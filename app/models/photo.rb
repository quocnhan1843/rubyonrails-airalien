class Photo < ActiveRecord::Base
  belongs_to :room

  has_attached_file :image, styles: {full: "900x400#", thumb: "100x100>", medium:"300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
