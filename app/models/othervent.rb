class Othervent < ActiveRecord::Base
validates :other_topic, :presence => true
validates :urgency, :presence => true
validates :user_id, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :otherlifts
belongs_to :user

end
