def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results=[]
  row_index=0 
  while row_index<src.count do
    element_index=0 
    smallest_daily_value= src[row_index][element_index]
    while element_index<src[row_index].count do
     if src[row_index][element_index]<smallest_daily_value 
        smallest_daily_value=src[row_index][element_index]
      end
        element_index+=1 
    end
    row_index+=1
  outer_results << smallest_daily_value
end
  return outer_results
end



