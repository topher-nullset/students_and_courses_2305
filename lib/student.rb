class Student
  
  attr_reader :name, :age, :scores
  def initialize(stats)
    @name = stats[:name]
    @age = stats[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    return 0 if @scores.empty?
    (@scores.sum.to_f / @scores.size).round(1)
  end
end
