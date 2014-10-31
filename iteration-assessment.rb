# Given an array of hashes of student names (built in the array assement)
# When I run my ruby file
# Then I should see a headline printed: "All"
# And I should see printed list of students in this format "{{last name}}, {{first_name}}: {{email}}"
# And I should see a headline printed: "Some"
# And I should see the same formatting for the students that have a 't' upper or lower case in their last names



def data
  {
    "John" => {
      first_name: "John",
      last_name: "Foley",
      email: "john@gschool.it",
      class: "Beginning snark"
    },
    "Sylwester" => {
      first_name: "Sylwester",
      last_name: "Kelsey",
      email: "sellie@gmail.com",
      class: "Ruby Immersive"
    },
    "Timothy" => {
      first_name: "Timothy",
      last_name: "Rama",
      email: "tim.rama@gmail.com",
      class: "Ruby Immersive"
    },
    "Kane" => {
      first_name: "Kane",
      last_name: "Baccigalupi",
      email: "kane@gschool.it",
      class: "C for dummies"
    },
    "Nikita" => {
      first_name: "Nikita",
      last_name: "Theodosius",
      email: "nikita.theo@gmail.com",
      class: "Ruby Immersive"
    },
    "Roddy" => {
      first_name: "Roddy",
      last_name: "Eldred",
      email: "roddy.el@gmail.com",
      class: "Ruby Immersive"
    },
    "Martha" => {
      first_name: "Martha",
      last_name: "Berner",
      email: "martha@gschool.it",
      class: "Time travel for beginners"
    },
    "Kofi" => {
      first_name: "Kofi",
      last_name: "Thomas",
      email: "k.thomas@hotmail.com",
      class: "Ruby Immersive"
    },
}
end

puts "ALL"
data.each_value do |value|
  puts "#{ value[:last_name]}, #{value[:first_name]}: #{ value[:email] }"
end

puts "Some"
data.each_value do |value|
  puts "#{ value[:last_name]}, #{value[:first_name]}: #{ value[:email] }" if value[:last_name].downcase.include? ("t")
end
