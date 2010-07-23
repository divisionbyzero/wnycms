class PagesController < ApplicationController
  inherit_resources
  before_filter :verify_has_access, :except => [:new, :create, :index]

  belongs_to :user

  def index
    # GET /pages
    
    @pages = Page.all
  end
  
  def show
    # GET /pages/:id
    
    if @user
      @page = @user.pages.by_slug(params[:id]).first
    else
      @page = Page.by_slug(params[:id]).first
    end
    
    @comment = Comment.new do |comment|
      comment.page = @page
    end
    
    @comments = @page.comments.oldest
  end
  
  def new
    # GET /pages/new
    
    @page = Page.new params[:page]
  end
  
  def create
    # POST /pages
    
    @page = Page.new params[:page]
    @page.author = current_user
    
    if @page.save
      redirect_to page_path(@page.slug)
    else
      render :action => :new
    end
  end
  
  def edit
    # GET /pages/:id/edit
    
    @page = Page.by_slug(params[:id]).first
  end
  
  def update
    # PUT /pages/:id
    
    @page = Page.by_slug(params[:id]).first

    if @page.update_attributes params[:page]
      redirect_to page_url(@page.slug)
    else
      render :action => :edit
    end
  end
  
  def destroy
    # DELETE /pages/:id
    
    @page = Page.find params[:id]
    @page.destroy
    
    redirect_to pages_path
  end

  def verify_has_access
    @page = Page.by_slug(params[:id]).first
    unless current_user && current_user == @page.author
      redirect_to root_url
    end
  end
  
end
