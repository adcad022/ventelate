class Relationshipvent < ActiveRecord::Base
validates :relationship_topic, :presence => true
validates :urgency, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :responses

end
