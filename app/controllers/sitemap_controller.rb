class SitemapController < ApplicationController 
  def index   
    @users = User.find(:all,:order => "updated_at DESC", :limit => 50000)
    @tags = Tag.find(:all, :limit => 50000)
    
    respond_to do |format|
      format.xml
    end
  end
end