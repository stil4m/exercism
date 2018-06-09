module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @students = {}
  end

  def students (n)
    @students.fetch(n, []).sort
  end

  def add (student, id)
    @students[id] = @students.fetch(id, []) << student
  end

  def students_by_grade
    @students
        .map {|k, v| {grade: k, students: v.sort}}
        .sort_by {|e| e[:grade]}
  end
end