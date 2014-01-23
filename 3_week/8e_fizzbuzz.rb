# doctest: Fizz
# >> fizzbuzz(3)
# => 'fizz'
# doctest: buzz
# >> fizzbuzz(5)
# => 'buzz'
# doctest: FizzBuzz
# >> fizzbuzz(15)
# => 'fizzbuzz'
# doctest: number
# >> fizzbuzz(8)
# => 8
def fizzbuzz(count)
  if count % 3 == 0 and count % 5 == 0
    'fizzbuzz'
  elsif count % 3 == 0
    'fizz'
  elsif count % 5 == 0
    'buzz'
  else
    count
  end
end

(-15).upto 15 do |number|
  puts fizzbuzz number
end
# The ternary operator
# ?: if you were to search somewhere like SymbolHound.com
# It is a modified if statement.
# <conditional statement> ? <this if true> : <this if false>
