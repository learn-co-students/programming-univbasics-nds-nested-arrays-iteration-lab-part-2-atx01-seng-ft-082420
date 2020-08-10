def find_min_in_nested_arrays(src)
  days = 0
  outer_results = []
  
  while days < src.count do
    temperature = 0 
    lowest_temperature = src[days].min
    while temperature < src[days].count do
      if src[days][temperature] < lowest_temperature
        lowest_temperature = src[days][temperature]
      end
      temperature += 1 
    end
    outer_results << lowest_temperature
      days += 1 
  end
  p outer_results
end