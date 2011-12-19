class WelcomesController < ApplicationController
  def index
    @lists = List.order("id DESC").page(params[:page]).per(5)
    @tags = List.tag_counts_on(:tags).sort { |x, y| x.name <=> y.name }
    
    @newlist = List.new
    3.times { @newlist.items.build }
    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
