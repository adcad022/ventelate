class Otherlift < ActiveRecord::Base
validates :user_id, :presence => true
validates :othervent_id, :presence => true
validates :support, :presence => true

belongs_to :user
belongs_to :othervent

end
