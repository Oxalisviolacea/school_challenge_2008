class School
  attr_reader :start_time, :hours_in_school_day, :student_names

 def initialize(start_time, hours_in_school_day)
   @start_time = start_time
   @hours_in_school_day = hours_in_school_day
   @student_names = []
   @standard_student_names = []
 end

 def end_time
   @start_time = start_time.gsub(":", ".").to_i
   (start_time + hours_in_school_day).to_s.concat(":00")
 end

 def add_student_name(student_name)
  @student_names << student_name
 end

 def is_full_time
   if hours_in_school_day > 4
     true
  else
    false
  end
 end

 def standard_student_names
  @standard_student_names << ["Aurora", "Tim", "Megan"]
 end

 # def convert_end_time_to_clock_time
 #  ((end_time.gsub(":", ".").to_i) - 12).to_s.gsub(".", ":")
 # end
end

school = School.new("9:00", 7)
puts school.start_time
puts school.end_time
puts school.is_full_time
puts school.standard_student_names
puts school.convert_end_time_to_clock_time
