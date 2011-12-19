class List < ActiveRecord::Base
  validates :title, :presence => true
  
  
  
  has_friendly_id :title, :use_slug => true, :approximate_ascii => true, :max_length => 50
  belongs_to :user
  has_many :items, :dependent => :destroy
  
  has_many :comments, :as => :commentable

  accepts_nested_attributes_for :items, 
                                :reject_if => lambda { |a| a[:body].blank? }, 
                                :allow_destroy => true
  
  accepts_nested_attributes_for :comments, 
                                :reject_if => lambda { |a| a[:body].blank? }, 
                                :allow_destroy => true

  
  acts_as_taggable
  
  scope :recent, lambda { created.where("lists.created_at > ?", 1.week.ago.to_date)}
  scope :where_title, lambda { |term| where("lists.title LIKE ?", "%#{term}%") }
  
  def owned_by?(owner)
    return false unless owner.is_a? User
    user == owner
  end  


end
