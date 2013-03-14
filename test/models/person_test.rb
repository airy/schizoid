require "minitest_helper"
require "person"

describe Person do
  
  subject { Person.new("Yukihiro", "Matsumoto") }

  it "has a first_name" do
    subject.first_name.must_equal "Yukihiro"
  end

  it "has a last_name" do
    subject.last_name.must_equal "Matsumoto"
  end
end
