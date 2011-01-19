class Latest < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description]
  
  validates_presence_of :title
  validates_uniqueness_of :title
  
  belongs_to :image
  belongs_to :image2, :class_name => 'Image'
  belongs_to :image3, :class_name => 'Image'
  belongs_to :brochure, :class_name => 'Resource'


end
