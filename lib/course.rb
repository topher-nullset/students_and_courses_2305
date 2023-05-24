class Course

  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    @students.length >= @capacity
  end

  def enroll_student(student)
    @students << student unless full?
  end
end
