require "schizo"

module Student
  extend Schizo::Role
  
  extended do
    attr :attendances
    @attendances = []
  end  
end
