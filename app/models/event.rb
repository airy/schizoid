require "mongoid"
require "mongoid-ancestry"

class Event
  resourcify

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Ancestry
  has_ancestry

  field     :status,      default: "Draft" 
  field     :name
  field     :description
  
  field     :start_time,  type: DateTime
  field     :finish_time, type: DateTime 
  
  validates :name,      presence: true

  validates :start_at,  presence: true
  #validates :start_at,  numericality: { greater_than: Time.now }

  validates :status,    presence: true
  validates :status,    inclusion: { in: [ "Draft", "Published" ] }

  attr_protected :status
  
end
