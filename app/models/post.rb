class Post < ActiveRecord::Base 
  has_many :comments
  
  scope :visible, where('hidden != ?', true)
  scope :latest_published, order('published_at desc').limit(10)
  scope :published, lambda{ where('published_at <= ', Time.zone.now) }
  scope :published_w_comments, published.includes(:comments)
  scope :recent, visible.published.latest_published
         
  validates_presence_of :title
  validates_presence_of :body  
end
