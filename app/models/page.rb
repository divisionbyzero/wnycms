class Page < ActiveRecord::Base

  ################
  #              #
  # Declarations #
  #              #
  ################
  
  before_save :add_slug
  
  ###############
  #             #
  # Validations #
  #             #
  ###############
  
  validates_presence_of :title
  validates_uniqueness_of :slug
  
  ####################
  #                  #
  # Instance Methods #
  #                  #
  ####################
  
  def add_slug
    self.slug = title.gsub /[^a-zA-Z0-9_]+/, '-'
  end
  
end
