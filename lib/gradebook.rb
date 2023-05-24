class Gradebook
  
  attr_reader :professor, :courses
  def initialize(prof)
    @professor = prof
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students 
    course_students = {}
    @courses.each {|course| course_students[course] = course.students}
    course_students
  end

  def students_below(threshold)
    below_threshold = []
    @courses.each do |course|
      course.students.each do |student|
        below_threshold << student if student.grade < threshold
      end
    end
    below_threshold
  end
end
