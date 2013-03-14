require "minitest_helper"
require "student"

describe Student do
  subject { Actor.new.as(Student) }

  it "has many attendances" do
    subject.must_respond_to :attendances
  end
end
