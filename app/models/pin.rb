class Pin < ActiveRecord::Base

  validates :description, presence: true

  belongs_to :user
  validates :user_id, presence: true

  has_attached_file :image, styles: { medium: "320x240>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/, size: {less_than: 5.megabytes}
end
