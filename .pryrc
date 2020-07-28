class PryCohort
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

  def groups_of(count)
    students.dup.shuffle.each_slice(count).with_index do |group, i|
      puts "Group #{i}"
      puts group.join(",\n") + "\n\n"
    end
  end

  def group_by(count)
    groups_of(count)
  end
end

be_staff = [
  "Megan",
  "Aurora",
  "Tim",
  "Meg",
  "Mike",
  "Cory",
  "Brian",
  "Dione",
  "Alex",
  "Ian"
]

fe_staff = [
  "Leta",
  "Pam",
  "Khalid",
  "Travis",
  "Eric",
  "Robbie",
  "Hannah",
  "Will",
  "Casey"
]

pd_staff = [
  "Allison",
  "Tracey",
  "Ryan"
]

combined = be_staff + fe_staff
including_pd = combined + pd_staff

s = PryCohort.new(including_pd)

