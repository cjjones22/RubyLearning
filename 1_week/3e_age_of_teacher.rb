# Write a Ruby program that displays how old I 
# am, if I am 979000000 seconds old. Display 
# the result as a floating point (decimal) 
# number to two decimal places (for example, 
# 17.23). Note: To format the output to say 2 
# decimal places, we can use the Kernel's 
# format method. For example, if x = 45.5678 then 
# format("%.2f", x) will return the string 45.57.

# years | 365 days | 24 hrs | 60 min | 60 sec

age_sec = 979000000
sec_in_min = 60
min_in_hr = 60
hr_in_day = 24
day_in_yr = 365
true_age = age_sec.to_f / sec_in_min.to_f / min_in_hr.to_f / 
  hr_in_day.to_f / day_in_yr.to_f

puts "%.2f" % true_age
