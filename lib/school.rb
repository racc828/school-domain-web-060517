

class School
  attr_accessor :school_name
  attr_reader :roster

  def initialize(school_name)
    @school_name = school_name
    @roster= {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_list|
    student_list.sort!
    end
  end

end
