# doctest: variables will be called when it is ambiguous
# >> my_string
# => "Hello Ruby World"
# doctest: send(:my_string)
# >> "Hello World"
# doctest: my_string()
# >> my_string()
# >> "Hello World"
# doctest: self.my_string
# You can not use a receiver for private methods
# >> self.my_string
# >> "Hello World"
my_string = 'Hello Ruby World' 
# If I define methods at the 'main' level they are by default private.
public
def my_string
  'Hello World' 
end

puts my_string
