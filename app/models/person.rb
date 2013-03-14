require "schizo"

class Person
  include Schizo::Data
  
  attr :first_name
  attr :last_name

  def initialize first_name, last_name
    @first_name = first_name
    @last_name  = last_name
  end
end
