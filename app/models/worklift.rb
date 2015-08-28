class Worklift < ActiveRecord::Base

validates :user_id, :presence => true
validates :workvent_id, :presence => true
validates :support, :presence => true

belongs_to :user
belongs_to :workvent

end
