require 'rspec'
require './lib/student'

RSpec.describe Student do
  before do
    @student = Student.new({name: "Morgan", age:21})
  end

  it 'exists with attributes' do
    expect(@student.name).to eq "Morgan"
    expect(@student.age).to eq 21
    expect(@student.scores).to eq []
  end

  it 'logs scores and calculates grade' do
    @student.log_score(89)
    @student.log_score(78)
    
    expect(@student.scores).to eq [89, 78]
    expect(@student.grade).to eq 83.5
  end
end