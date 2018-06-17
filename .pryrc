class Cohort
  attr_reader :students,
              :responders

  def initialize(students)
    @students = students
  end

  def pair
    s = students.dup.shuffle
    pairs = ""

    s.each_with_index do |student, n|
      if n % 2 == 0
        pairs += "#{student}"
      else
        pairs += " & #{student}\n"
      end
    end
    puts pairs
  end

  def pop
    @responders = students.dup if responders == [] || responders == nil
    responders.shuffle!.pop
  end
end

cohort_1711 = [
               "Andrew Jeffery",
               "Andy Dymond",
               "Anna Lewis",
               "Anna Royer",
               "Ellen Cornelius",
               "Joseph Jobes",
               "Luke Chambers",
               "Matt Milton",
               "Megan McMahon"
              ]

s = Cohort.new(cohort_1711)
