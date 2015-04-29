class Question < ActiveRecord::Base
	belongs_to :survey
	has_many :choices,:dependent => :destroy
	has_one :answer,:dependent => :destroy
end
