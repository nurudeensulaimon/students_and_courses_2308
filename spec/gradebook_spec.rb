require 'rspec'
require 'pry'
require './lib/course'
require './lib/student'
require './lib/gradebook'


RSpec.describe Gradebook do 
  before(:each) do 
    @gradebook = Gradebook.new("Abdul")
  end

  it "exists" do 
    @gradebook = Gradebook.new("Abdul")
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
    expect(@gradebook).to be_instance_of(Gradebook)
  end


  it "has attributes" do
    expect(@gradebook.instructor).to eq("Abdul")
    expect(@gradebook.courses).to eq([])
  end

  it "has a command method add_course" do
     @gradebook.add_course("Backend")
     @gradebook.add_course("OOP")
     expect(@gradebook.courses).to eq(["Backend", "OOP"])
  end
   
  xit "has a method list_all_students" do 
    output = {"Calculus" => [@student1,@students]}
  expect(list_all_students).to eq(output)
  end

   it  "has a method student_below(threshold)" do
      expect(student_below(90)).to equal(["Morgan","Jordan"])
   end
end