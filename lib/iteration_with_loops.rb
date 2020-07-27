def find_min_in_nested_arrays(src)
  results = []
  row_index = 0
  while row_index < src.count do 
    min = 120
    element_index = 0 
    while element_index < src[row_index].count do 
      if src[row_index][element_index] < min 
        min = src[row_index][element_index]
      end 
      element_index += 1
    end 
    results.push(min)
    row_index += 1
  end 
  results
end