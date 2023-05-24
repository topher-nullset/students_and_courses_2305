require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before do
    @gradebook = Gradebook.new("Mr. C")
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Dif Geometry", 2)
    @student1 = Student.new({name: "Morgan", age:21})
    @student2 = Student.new({name: "John", age:20})
  end

  it 'exists' do
    expect(@gradebook).to be_a(Gradebook)
  end

  it 'has a Professor' do
    expect(@gradebook.professor).to eq "Mr. C"
  end

  it 'has courses' do
    @gradebook.add_course(@course1)
    expect(@gradebook.courses).to eq [@course1]
    @gradebook.add_course(@course2)
    expect(@gradebook.courses).to eq [@course1, @course2]
  end
end