require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

instructor1 = Instructor.new("Mrs. Puff")
instructor2 = Instructor.new("Mr. Mackay")
instructor3 = Instructor.new("Mr. Shady")

student1 = Student.new("Spongebob")
student2 = Student.new("Eric")
student3 = Student.new("Stan")

boating_test1 = BoatingTest.new(student2, "Seatbelt", "Failed", instructor3)
boating_test2 = BoatingTest.new(student1, "Putting in gear", "Failed", instructor1)
boating_test3 = BoatingTest.new(student3, "Signaling", "Passed", instructor2)
boating_test4 = BoatingTest.new(student1, "parking", "Failed", instructor1)
boating_test5 = BoatingTest.new(student1, "Swerving", "Passed", instructor2)

student2.add_boating_test(self, "Speeding", "Passed", instructor3)

instructor1.pass_student(student1, "parking")
instructor2.fail_student(student1, "Swerving")
instructor3.fail_student(student2, "Blindfold Driving")

binding.pry

0 #leave this here to ensure binding.pry isn't the last line

