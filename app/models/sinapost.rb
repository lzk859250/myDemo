class Sinapost < ActiveRecord::Base
	belongs_to :user
	validate :content, :length => { :maximum => 40 }
end
