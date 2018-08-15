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

cohort_1808 = [
                "Aaron Brooks Roberts",
                "Aizar Cabrera",
                "Amy Petrie",
                "Averi Johnson",
                "Bailey Diveley",
                "Cesar Jolobois",
                "Dan Hutchinson",
                "Geoffrey Adebonojo",
                "Isaac Falkenstine",
                "Jenn Lao",
                "Jimmy Smith",
                "Jordan Whitten",
                "Joshua Baik",
                "Kate Rimkunas",
                "Mary Bork",
                "Meg Stang",
                "Melvin Cedeño",
                "Michael Gatewood",
                "Nikki Holland-Plum",
                "Noah Flint",
                "Norman Schultz",
                "Preston Jarnagin",
                "Quinn Krug",
                "Rene Casco",
                "Ruth Brand",
                "Ryan McNeil",
                "Samuel Giles",
                "Silvestre Cuellar",
                "Tom Nuñez",
                "Timothy Fell",
                "William Fischer"
              ]

s = Cohort.new(cohort_1808)
