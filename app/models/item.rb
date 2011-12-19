class Item < ActiveRecord::Base
  attr_accessible :body, :url 
  
  validates :body, :presence => true
  validates_format_of :url, :with => URI::regexp(%w(http https)), :allow_blank => true
  
  
  belongs_to :user
  
  def uri?(string)
      uri = URI.parse(string)
      %w( http https ).include?(uri.scheme)
    rescue URI::BadURIError
      false
  end
  
  
end
