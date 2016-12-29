class City < ApplicationRecord

  searchkick

  has_attached_file :image, styles: {
    big: "1920x1080>",
    medium: "1280x720>",
    small: "320x260>"
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :image, :less_than => 4.megabytes
end
