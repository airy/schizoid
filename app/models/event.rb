require "mongoid"
require "mongoid-ancestry"

class Event

  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Ancestry
  has_ancestry

  field     :status,      default: "Draft" 
  field     :name
  field     :description
  
  field     :start_at,  type: DateTime
  field     :finish_at, type: DateTime 
  
  validates :name,      presence: true

  validates :start_at,  presence: true
  #validates :start_at,  numericality: { greater_than: Time.now }

  validates :status,    presence: true
  validates :status,    inclusion: { in: [ "Draft", "Published" ] }

  attr_protected :status
  
end
