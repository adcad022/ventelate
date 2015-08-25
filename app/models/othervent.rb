class Othervent < ActiveRecord::Base
validates :other_topic, :presence => true
validates :urgency, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :responses

end
