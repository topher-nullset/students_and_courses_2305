require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before do
    @gradebook = Gradebook.new("Mr. C")
  end

  it 'exists' do
    expect(@gradebook).to be_a(Gradebook)
  end
end