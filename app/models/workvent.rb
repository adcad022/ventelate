class Workvent < ActiveRecord::Base

validates :work_topic, :presence => true
validates :urgency, :presence => true
validates :user_id, :presence => true
validates :story, :presence => true, :uniqueness => true

has_many :worklifts
belongs_to :user

end
