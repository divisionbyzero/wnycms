class Comment < ActiveRecord::Base
  belongs_to :author, :foreign_key => "author_id", :class_name => "User"
  
  belongs_to :page
  
  named_scope :top_5, :limit => 5
  
  named_scope :top, lambda { |n| { :limit => n } }

  named_scope :newest, :order => "created_at DESC"
  
  named_scope :oldest, :order => "created_at ASC"
  
end
