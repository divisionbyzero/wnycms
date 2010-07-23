class CommentsController < ApplicationController
  inherit_resources
  actions :create, :destroy
  belongs_to :page, :finder => :find_by_slug
  
  def create
    create! do |success, failure|
      @comment.author = current_user
      @comment.save
      
      success.html { redirect_to page_path(@page.slug) }
      failure.html { redirect_to page_path(@page.slug) }
    end
  end
  
end
