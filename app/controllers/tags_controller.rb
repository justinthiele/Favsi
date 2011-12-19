class TagsController < ApplicationController
  def index
    @tag = Tag.all
    @tags = List.tag_counts_on(:tags).sort { |x, y| x.name <=> y.name }
  end

  def show
    @tag = Tag.find(params[:id])
    @lists = List.tagged_with([@tag.name])
  end

end
