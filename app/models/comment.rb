class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
  
  def list
    return @list if defined?(@list)
    @list = commentable.is_a?(List) ? commentable : commentable.list
  end
  
end
