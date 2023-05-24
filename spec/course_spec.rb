require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
  before do
    @course = Course.new("Calculus", 2)
  end

  it 'exists' do
    expect(@course.name).to eq "Calculus"
    expect(@course.capacity).to eq 2
    expect(@course.students).to eq []
    expect(@course.full?).to eq false
  end
end