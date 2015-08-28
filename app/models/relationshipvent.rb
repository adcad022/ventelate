class Relationshipvent < ActiveRecord::Base

validates :relationship_topic, :presence => true
validates :urgency, :presence => true
validates :user_id, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :relationshiplifts
belongs_to :user

end
