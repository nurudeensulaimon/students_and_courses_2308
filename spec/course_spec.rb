require 'rspec'
require 'pry'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it "exists" do 
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it "has attributes" do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq 2
  end
end 

