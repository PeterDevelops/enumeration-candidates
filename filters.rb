# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(candidates, id)
  candidates.find { |candidate| candidate[:id] == id }
  end
  
  def experienced?(candidate)
    # checks if a single candidate has 2 or more years of experience
    # returns true or false
    candidate[:years_of_experience] >= 2
  end

  
  def qualified_candidates(candidates)
    
    candidates.select do |candidate|
      candidate[:years_of_experience] >= 2 &&
      candidate[:github_points] >= 100 &&
      know_ruby_or_python(candidate) &&
      candidate[:date_applied] >= 15.days.ago.to_date &&
      candidate[:age] > 17
    end
  end
  
  def ordered_by_qualification(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end

  # More methods will go below
  def know_ruby_or_python(candidate)
    candidate[:languages].include?("Ruby") || candidate[:languages].include?("Python")
  end