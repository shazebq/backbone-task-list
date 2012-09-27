class Task < ActiveRecord::Base

  validates_presence_of :title

  attr_accessible :content, :title, :user_id
end
