ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


# 1: 3 points
# 2: 2 points
# 3: 1 points

# save the values in a variable to compare with

# go through each item in ballot
# go through each hash inside ballot and use key and pair value
# match the key and pairs with the variables


totals = Hash.new(0)

ballots.each do |hash|
  hash.each do |vote, name|
      points = 4 - vote
      totals[name] += points
  end
end

p totals
