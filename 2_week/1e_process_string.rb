# doctest: linify
# >> s = "Now is the time\nfor all good men\nto come to the aide of their country.\n"
# >> linify(s) {|str| str.split(/\n/).map.with_index(1) {|line, i| "Line #{i}: #{line}"}}
# => "Line 1: Now is the time
#    Line 2: for all good men
#    Line 3: to come to the aide of their country.
#    "
def linify(string)
  yield(string).join("\n") + "\n"
end

def chop
  yield("Line 1")
  yield("Line 2")
  yield("Line 3")
end

if __FILE__ == $PROGRAM_NAME
  chop {}
  s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
  puts linify(s) {|str| str.split(/\n/).map.with_index(1) {|line, i| "Line #{i}: #{line}"}}
end
