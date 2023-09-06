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
    expect(@gradebook).to be_instance_of(Gradebook)
  end


  it "has attributes" do
    expect(@gradebook.instructor).to eq("Abdul")
    expect(@gradebook.courses).to eq([])
  end
end