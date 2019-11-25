class Instructor
    attr_accessor :name
@@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 

def self.all 
@@all
end 

def pass_student(student, test_name)
    count = 0 
    BoatingTest.all.each do |test|
        if test.student == student && test.boating_test_name == test_name
            test.boating_test_status = "Passed"
            count += 1 
        end 
    end
    
    # BoatingTest.all.each do |test|
    #     if test.student != student || test.boating_test_name != test_name 
    #         new = true 
    #     end 
    # end 
    # if 
    if count == 0  
        new_student = BoatingTest.new(student, test_name, "Passed", self) 
    end 
end 
def fail_student(student, test_name)
    count = 0 
    BoatingTest.all.each do |test|
        if test.student == student && test.boating_test_name == test_name
    test.boating_test_status = "Failed"
    count += 1 
        end 
    end 

# if !BoatingTest.all.include?((student && name )|| student || name)
#     BoatingTest.all.each do |test|
# if test.student != student || test.boating_test_name != test_name 
# end 
# end 
    if count == 0  
    BoatingTest.new(student, test_name, "Failed", self)
    end 
end
end 