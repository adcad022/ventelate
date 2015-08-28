class Relationshiplift < ActiveRecord::Base

validates :user_id, :presence => true
validates :relationshipvent_id, :presence => true
validates :support, :presence => true

belongs_to :user
belongs_to :relationshipvents

end
