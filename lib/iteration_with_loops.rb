
def find_min_in_nested_arrays(src)
the_lows= []

# We declare an empty array to contain the low temperatures for each day of the week

row_index = 0

#row_index gives us access to the outer array. We set it to 0 since arrays begin at 0.

while row_index < src.count do
 
  # This loop will iterate over every element in the outer src array.
  
  element_index = 0
  
  #element_index gives us access to the inner array.
  
  lowest_daily_temperature = 300
  
  # We intentionally set it to an impossibly high temperature, forcing the condition to evaluate to true on the first iteration of the loop below.
  
  while element_index < src[row_index].count do
    
    #this inner loop iterates over the elements from the arrays nested inside src
    
    if src[row_index][element_index] < lowest_daily_temperature
      lowest_daily_temperature = src[row_index][element_index]
      
      #When the lowest_daily_temperature is higher than any comparison temperature, its value is reassigned to the lower temperature.
    end
    
    element_index += 1
    
    # our incrementer advances the loop to the next iteration pushing it closer and closer to evaluating to false and ending.
    
  end
  
 # We have to check every element in each inner array, so after the loop finishes, the current value of lowest_daily_temperature is pushed into the_lows
  
  the_lows.push(lowest_daily_temperature)
  
  row_index += 1
  # Our inner loop may have finished, but, now, our outer loop will iterate once more, causing our inner loop to iterate over the new array being passed to it, unless, of course, we have been around this mulberry bush enough times for the condition to evaluate to false.
  
  
end
the_lows 
 end