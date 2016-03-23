class Post < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_description, :against => :description
  validates :image, presence: true
  belongs_to :category
  belongs_to :user
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ unless Rails.env.test?
end
