require "minitest_helper"
require "event"

describe Event do
  subject        { Event.new(start_datetime: Time.now) }
  
  it 'has a status' do
    subject.must_respond_to :status
  end
  
  it 'has a name' do
    subject.must_respond_to :name
  end 

  it 'has a start date/time time' do
    subject.must_respond_to :start_at
  end 

  it 'has a finish date/time' do
    subject.must_respond_to :finish_at
  end
  
  it 'may has many child events' do
    subject.must_respond_to :children
  end

  it 'may has parent event' do
    subject.must_respond_to :parent
  end
end
