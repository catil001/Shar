class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true 
  validates :content, presence: true, length: { maximum: 140 } #max is 140 characters, this can be changed for future..
  
  #for images on posts
  has_attached_file :image, styles: {large: "500x800>", medium: "400x400>", thumb: "150x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  default_scope -> { order(created_at: :desc) } #newests posts first
end

