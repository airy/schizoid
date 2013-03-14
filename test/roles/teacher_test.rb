require "minitest_helper"
require "teacher"

describe Teacher do
  subject { Actor.new.as Teacher }
  
  it "has many students" do
    subject.must_respond_to :students
  end
end
