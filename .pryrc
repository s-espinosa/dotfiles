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
  "Jordan Whitten",
  "Joshua Baik",
  "Kate Rimkunas",
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
  "Tom Nuñez",
  "Timothy Fell",
  "William Fischer"
]

cohort_1810 = [
  "Ali Benetka",
  "Anna Smolentzov",
  "Anten Skrabec",
  "Ben Lee",
  "Bradley Niedt",
  "Daniel Briechle",
  "Aaron Brooks-Roberts",
  "Jimmy Smith",
  "Justin Clark",
  "Justin Mauldin",
  "Lance Taylor",
  "Leah Miller",
  "Mackenzie Frey",
  "Maddie Jones",
  "Mary Goodhart",
  "Michael Clampett",
  "Nick Lindeberg",
  "Nico Vigil",
  "Ricardo Ledesma",
  "Silvestre Cuellar",
  "Tony Robertson",
]

cohort_1811 = [
  "April Dagonese",
  "Christopher Lewis",
  "Derek Bird",
  "Earl Stephens",
  "Erin King",
  "Jennica Stiehl",
  "Julia Marco Oteros",
  "Martin Mercer",
  "Million Bekele",
  "Noah Flint",
  "Peregrine Balas",
  "Peter Lapicola",
  "Rene Casco",
  "Scott Thomas",
  "Teresa Maria Moreno Knowles",
  "Tim Allen",
  "Trevor Nodland",
  "Ty Mazey",
  "William Peterson",
  "Zach Leach",
  "Zachary Nager"
]

cohort_1903 = [
  "Alexander Mathieu",
  "Alexandra Chakeres",
  "Andrew Johnson",
  "Aurie Gochenour",
  "Billy Urrutia",
  "Brennan Ayers",
  "Brian Plantico",
  "Christopher Davis",
  "Glynnis O'Connell",
  "James Howard Cape",
  "Justin Duncan",
  "Kyle Cornelissen",
  "Logan Pile",
  "Martha Troubh",
  "Martin Mercer",
  "Mills Provosty",
  "Patrick Duvall",
  "Ryan Miller",
  "Santiago Caraveo",
  "Stella Mainar",
  "Vince Carollo",
  "Billy Homer"
]


s = PryCohort.new(cohort_1903)

# Pry.prompt = [
#   proc { |target_self, nest_level, pry|
#     "[#{pry.input_array.size}]\001\e[0;32m\002#{Pry.config.prompt_name}\001\e[0m\002(\001\e[0;33m\002#{Pry.view_clip(target_self)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}> "
#   },
#   proc { |target_self, nest_level, pry|
#     "[#{pry.input_array.size}]\001\e[1;32m\002#{Pry.config.prompt_name}\001\e[0m\002(\001\e[1;33m\002#{Pry.view_clip(target_self)}\001\e[0m\002)#{":#{nest_level}" unless nest_level.zero?}* "
#   }
# ]
