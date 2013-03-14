class Attendance
  attr :event
  attr :person
  
  def initialize event, person
    @person = person
    @event = event
  end
end
