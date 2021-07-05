class Book < ApplicationRecord
  # attr_accessible :tags_attributes

  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :book_tags
  has_many :tags, through: :book_tags

  validates :title, :presence => true, :length => { :minimum => 2 }
  validates :author,  :presence => true
  validates :img, :presence => true
  validates :page, :presence => true
  validates :content, :length => { :minimum => 3 }, allow_blank: true 
  validates :location, :length => { :minimum => 3 }, allow_blank: true 

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
  :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
