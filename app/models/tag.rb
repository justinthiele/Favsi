class Tag < ActiveRecord::Base
  belongs_to :list
  has_friendly_id :name, :use_slug => true, :approximate_ascii => true, :max_length => 50
end
