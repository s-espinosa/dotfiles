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

cohort_1806 = [
                "Aizar Cabrera",
                "Amy Petrie",
                "Austin Wood",
                "Averi Johnson",
                "Bailey Diveley",
                "Cesar Jolobois",
                "Dan Hutchinson",
                "Geoffrey Adebonojo",
                "Isaac Falkenstine",
                "Jenn Lao",
                "Jimmy Smith",
                "John Aaron Brooks Roberts",
                "Joshua Baik",
                "Jordan Whitten",
                "Katelyn Rimkunas",
                "Mary Bork",
                "Meg Stang",
                "Melvin Cedeño",
                "Michael Gatewood",
                "Nikki Holland-Plum",
                "Norman Schultz",
                "Preston Jarnagin",
                "Quinn Krug",
                "Rene Casco",
                "Ruth Brand",
                "Ryan McNeil",
                "Samuel Giles",
                "Silvestre Cuellar",
                "Tom Nuñez",
                "Tony Robertson"
              ]

s = Cohort.new(cohort_1806)
