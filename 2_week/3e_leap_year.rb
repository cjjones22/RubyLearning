class YearZeroError < Exception
  def message
    "Year 0 does not exist."
  end
end

# doctest: leap_year? 1980
# >> leap_year?(1980)
# => true
# doctest: leap_year? 1996
# >> leap_year?(1996)
# => true
# doctest: leap_year? 2000
# >> leap_year?(2000)
# => true
# doctest: leap_year? 2004
# >> leap_year?(2004)
# => true
# doctest: leap_year? 1900
# >> leap_year?(1900)
# => false
# doctest: Raises Argument Error for non-existent year 0
# >> lambda  do
#    begin 
#    leap_year? 0 
#    rescue YearZeroError=> e 
#    return e.class 
#    end
#    end.call
# => YearZeroError
def leap_year?(year)
  if year.zero?
    fail YearZeroError
  else
    year.evenly_divisible_by?(400) ||
      year.evenly_divisible_by?(4) &&
      !year.evenly_divisible_by?(100)
  end
end

class Fixnum
  def evenly_divisible_by?(other)
    (self % other).zero?
  end
end

# doctest: days_in_year(1980)
# >> days_in_year(1980)
# => 366
# doctest: days_in_year(1997)
# >> days_in_year(1997)
# => 365
# doctest: Raises error when year 0 is used
# >> -> do 
#    begin 
#    days_in_year(0)
#    rescue YearZeroError => e 
#    return e.class 
#    end
#    end.call
# => YearZeroError
def days_in_year(year)
  leap_year?(year) ? 366 : 365
end

def minutes_in_year(year)
  days_in_year(year) * 24 * 60
end

if __FILE__== $PROGRAM_NAME
  [1985, 1976, 2003, 2025].each do |year|
    puts "There are #{minutes_in_year(year)} minutes in #{year}, and it is a #{
    leap_year?(year)} statement that it is indeed a leap year."
  end
end
