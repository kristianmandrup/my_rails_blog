class Comment < ActiveRecord::Base  
  belongs_to :post 
  
  scope :latest_first, order('created_at desc')
end
