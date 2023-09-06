require './lib/student'

class Gradebook 
attr_reader :instructor,
            :courses
  def initialize(instructor)
    @instructor=instructor
    @courses = []
  end
  
  def add_course(course)
    @courses << course
  end
  
  def list_all_students 
    binding.pry
  end

  def student_below(threshold)
    @scores.each do |score|
      if score < threshold 
         student 
      end
    end
  end
end