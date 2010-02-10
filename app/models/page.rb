class Page < ActiveRecord::Base
  before_save :add_slug

  validates_presence_of :title
  validates_uniqueness_of :slug

  named_scope :by_slug, lambda { |slug|
    {:conditions => ["pages.slug = ?", slug], :limit => 1}
  }

  def add_slug
    self.slug = title.gsub /[^a-zA-Z0-9_]+/, '-'
  end
  
end
