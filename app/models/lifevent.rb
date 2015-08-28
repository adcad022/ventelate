class Lifevent < ActiveRecord::Base
validates :life_topic, :presence => true
validates :urgency, :presence => true
validates :user_id, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :lifelifts
belongs_to :user

end
