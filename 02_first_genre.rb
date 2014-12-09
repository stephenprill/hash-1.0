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

# Print the first genre that each person listed
# Expected output is:
#   jazz
#   funk
# hash and one thing per entry
# since it's an array it has first method
# what are we trying to dig into - hash
# do we want thing out of that hash or each record
# in this case we want one thing - one per record scenario which should trigger a .each

people.each do |person, about|
  puts about[:preferences][:favorite_genres].first
end

# people.each do |person, info|
#   #grabbing the key defined as person
#   #people[person]
#   #name_of_hash[:key]
#   #will return :value
#   #could also write if statement
#   puts people[person][:preferences][:favorite_genres][0]
# end

#name of hash/key/equals value
#hsh[key] → value
#ruby-doc
# Element Reference—Retrieves the value object corresponding to the key object. If not found, returns the default value (see Hash::new for details).
#
# h = { "a" => 100, "b" => 200 }
# h["a"]   #=> 100
# h["c"]   #=> nil

# hsh[key] = value → value click to toggle source
# Element Assignment—Associates the value given by value with the key given by key. key should not have its value changed while it is in use as a key (a String passed as a key will be duplicated and frozen).
#
# h = { "a" => 100, "b" => 200 }
# h["a"] = 9
# h["c"] = 4
# h   #=> {"a"=>9, "b"=>200, "c"=>4}
