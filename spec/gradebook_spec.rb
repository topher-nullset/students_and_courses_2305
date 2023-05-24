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
    @course1.enroll_student(@student1)
    @course1.enroll_student(@student2)
    @gradebook.add_course(@course1)
  end

  it 'exists' do
    expect(@gradebook).to be_a(Gradebook)
  end

  it 'has a Professor' do
    expect(@gradebook.professor).to eq "Mr. C"
  end

  it 'has courses' do
    expect(@gradebook.courses).to eq [@course1]
    @gradebook.add_course(@course2)
    expect(@gradebook.courses).to eq [@course1, @course2]
  end

  it 'can list_all_students in its courses' do
    @gradebook.add_course(@course2)
    expect(@gradebook.list_all_students).to eq {course1=> [@student1, @student2], course2=> []}
  end

  it 'can show all student below threshold' do
    @student1.log_score(100)
    @student2.log_score(90)
    expect(@gradebook.students_below(99)).to eq [@student2]
  end
end