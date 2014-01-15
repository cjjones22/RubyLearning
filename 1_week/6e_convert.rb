# doctest: convert -40 should be -40
# >> convert -40
# => -40
# doctest: convert 98 should be around 36.66667
# >> convert(98).round(6)
# => 36.666667
# doctest: Boiling point is 100C
# >> convert 212
# => 100
# doctest: Freezing point
# >> convert 32
# => 0
# doctest: Given a string we get NoMethodError
# >> lambda do
#    begin
#      convert("Look Mom!  No hands!")
#    rescue NoMethodError => e
#      e.class
#    end
#    end.call
# => NoMethodError
def convert(tempf)
  (tempf - 32.0) * 5 / 9
end
if __FILE__ == $PROGRAM_NAME
  [-40, 0, 32, 98, 98.6, 100, 212].each do |_F|
    #  puts 'Please enter your temperature in Fahrenheit.'
    #  tempf = gets.to_i

    puts sprintf('%0.2fF is %0.2f degrees Celsius.', _F, convert(_F))
  end
end
