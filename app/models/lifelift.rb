class Lifelift < ActiveRecord::Base
validates :user_id, :presence => true
validates :lifevent_id, :presence => true
validates :support, :presence => true

belongs_to :user
belongs_to :lifevent

end
