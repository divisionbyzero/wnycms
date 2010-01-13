class PagesController < ApplicationController

  def index
    # GET /pages
    
    @pages = Page.all
  end
  
  def show
    # GET /pages/:id
    
    @page = Page.find params[:id]
  end
  
  def new
    # GET /pages/new
    
    @page = Page.new params[:page]
  end
  
  def create
    # POST /pages
    
    @page = Page.new params[:page]
    
    if @page.save
      redirect_to page_path(@page)
    else
      render :action => :new
    end
  end
  
  def edit
    # GET /pages/:id/edit
    
    @page = Page.find params[:id]
  end
  
  def update
    # PUT /pages/:id
    
    @page = Page.find params[:id]

    if @page.update_attributes params[:page]
      redirect_to pages_path
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
  
end
