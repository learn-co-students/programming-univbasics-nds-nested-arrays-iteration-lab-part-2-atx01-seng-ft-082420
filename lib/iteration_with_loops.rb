def find_min_in_nested_arrays(array_of_daily_temperatures)
   row_index = 0
   minimum_values = []
 
 while row_index < array_of_daily_temperatures.count do
   element_index = 0
   lowest_number = ""
   while element_index < array_of_daily_temperatures[row_index].count do
     if element_index == 0 || array_of_daily_temperatures[row_index][element_index] < lowest_number
       lowest_number = array_of_daily_temperatures[row_index][element_index]
     end
      element_index += 1
    end
      minimum_values << lowest_number
      row_index += 1
   end
 return minimum_values
end