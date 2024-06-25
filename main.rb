# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates
# candidate =  {
#   id: 5,
#   years_of_experience: 4,
#   github_points: 293,
#   languages: ['C', 'Ruby', 'Python', 'Clojure'],
#   date_applied: 5.days.ago.to_date,
#   age: 26
# }
# pp experienced?(candidate)

# candidate = find(@candidates, 10)
# if candidate
#   pp "Found candidate #{candidate[:id]}"
# else
#   pp "Could not find candidate"
# end

# pp qualified_candidates(@candidates)
# create arrays
pp ordered_by_qualification(@candidates)