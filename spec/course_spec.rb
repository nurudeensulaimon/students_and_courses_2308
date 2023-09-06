require 'rspec'
require 'pry'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do 
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  it "exists" do 
    @course = Course.new("Calculus", 2)
    expect(@course).to be_instance_of(Course)
  end

  it "has attributes" do
    expect(@course.name).to eq("Calculus")
    expect(@course.capacity).to eq 2
    expect(@course.students).to eq([])
    expect(@course.full?).to eq(false)
  end
   
   it "has a command enroll which adds student to class" do 
    @course.enroll(@student1) 
    @course.enroll(@student2) 
    expect(@course.students).to eq([@student1,@student2])
   end 
 end 

