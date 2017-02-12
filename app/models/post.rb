class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true 
  validates :content, presence: true, length: { maximum: 140 } #max is 140 characters, this can be changed for future..
  #for images posted go to DIY episode 7
  default_scope -> { order(created_at: :desc) } #newests posts first
  
  
end

