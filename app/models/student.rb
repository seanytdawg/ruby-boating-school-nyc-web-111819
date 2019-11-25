class Student
attr_accessor :first_name
@@all = []
def initialize(first_name)
    @first_name = first_name
    @@all << self 
end

def self.all 
    @@all 
end 

def add_boating_test(student, boating_test_name, boating_test_status, instructor)
    new_boating_test = BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
end 

def self.find_student(student_first_name)
    @@all.find do |student|
        student.first_name == student_first_name
    end 
end 

def total_tests
    total_tests = 0.0
    BoatingTest.all.each do |test|
        if test.student == self 
            total_tests += 1 
        end 
    end 
    return total_tests
end 

def passed_tests
    passed_tests = 0.0
    BoatingTest.all.each do |test|
    if test.student == self && test.boating_test_status == "Passed"
        passed_tests += 1
    end 
    end   
    return passed_tests
    end 

def grade_percentage 
    passed = self.passed_tests 
   total = self.total_tests 
   return passed/total
end 


end 