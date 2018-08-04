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
                "Abdulla Qudrat",
                "Andrew Tobin",
                "Autumn Martin",
                "Averi Johnson",
                "Ben Ghalami",
                "Daniel Mulitauopele",
                "Dylan Meskis",
                "Erik Schneider",
                "Harper Bellows",
                "Jesse Ling",
                "Kathleen Yruegas",
                "Kelly (Eugene) Marcilliat",
                "Maria Torres",
                "Mary Bork",
                "Melvin Cedeño",
                "Mike McKee",
                "Miriam Bensalah",
                "Nick Lindeberg",
                "Nikki (Mary) Holland-Plum",
                "Patrick McCartney",
                "Patrick Shobe",
                "Rajaa Boulassouak",
                "Rebecca Hyland",
                "Ronald Huston Jr",
                "Ruth Brand",
                "Samuel Giles",
                "Silvestre Cuellar",
                "Tara Craig",
                "Thomas Nuñez",
                "Tim Fielder"
              ]

s = Cohort.new(cohort_1806)
