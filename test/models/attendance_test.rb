require "minitest_helper"
require "attendance.rb"

describe Attendance do
  let(:event) { "An event" }
  let(:person) { "A person" }
  subject { Attendance.new(event, person) }

  it "initializes with event and person" do
    subject.must_be_instance_of Attendance
  end
  
  it "has an event" do
    subject.event.must_equal event
  end
  
  it "belongs to a person" do
    subject.person.must_equal person
  end
end
  
