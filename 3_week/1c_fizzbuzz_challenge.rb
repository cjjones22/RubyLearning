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

# Challenge states to add dazz and kezz for 7 and 11
# doctest: dazz
# >> dazz(7)
# => 'dazz'
# doctest: kezz
#>> kezz(11)
#=> 'kezz'
def fizzbuzz(count)
  result = ''
  result << 'fizz' if count % 3 == 0
  result << 'buzz' if count % 5 == 0
  result.empty? ? count : result
end

if __FILE__ == $PROGRAM_NAME
  (-15).upto 15 do |number|
    puts fizzbuzz number
  end
end

# The ternary operator
# ?: if you were to search somewhere like SymbolHound.com
# It is a modified if statement.
# <conditional statement> ? <this if true> : <this if false>
