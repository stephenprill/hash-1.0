people = {
  "joe" => {
    first_name: "Joe",
    last_name: "Jenkins",
    preferences: {
      meal: "meat",
      favorite_genres: ["jazz", "soul"],
    },
    sitting_next_to: :sue,
    correspondence: [
      {date: "11/4/2014", description: "sent invitation"},
      {date: "12/2/2014", description: "replied yes"},
    ],
  },
  "sue" => {
    :first_name => "Sue",
    :last_name => "Summers",
    :preferences => {
      :meal => "fish",
      :favorite_genres => ["funk", "blues"],
    },
    sitting_next_to: :joe,
    correspondence: [
      {date: "11/7/2014", description: "sent invitation"},
      {date: "12/8/2014", description: "replied yes + 1"},
    ],
  },
}

# Print the last name of the person sitting next to joe.
#
# Expected output is:
#   Summers
#
# HINT: Start by finding who joe is sitting next to, then find that person in the hash.

p people[people["joe"][:sitting_next_to].to_s][:last_name]

# p people[people["joe"][:sitting_next_to].to_s] == p people["sue"]
# > will return true    all that shit is the key

# this returns sue =="sue" which is above
# people[:key] ok people hash go find key name sue and return the value which is hash for "sue"
#=> :value
# people["sue"]
# different between puts and p figures out which sue it's pointing to
