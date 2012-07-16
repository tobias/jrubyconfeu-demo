class Idea < ActiveRecord::Base
  attr_accessible :text
  validates_presence_of :text
  default_scope :order => 'created_at desc'
end
