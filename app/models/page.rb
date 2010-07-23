class Page < ActiveRecord::Base
  belongs_to :author, :class_name => "User", :foreign_key => "user_id"
  
  before_save :add_slug

  validates_presence_of :title
  validates_uniqueness_of :slug

  named_scope :by_slug, lambda { |slug|
    {:conditions => ["pages.slug = ?", slug], :limit => 1}
  }

  named_scope :alphebetized, :order => "title"
  
  has_many :comments

  ######################
  #                    #
  # Instance Variables #
  #                    #
  ######################
  
  def add_slug
    self.slug = title.gsub(/[^a-zA-Z0-9_]+/, '-').downcase
  end

  def to_param
    slug
  end
  
end
