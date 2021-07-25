def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  retArray = []
  rowIndex = 0
  while rowIndex < src.count do
    columnIndex = 0
    while columnIndex < src[rowIndex].count do
      if src[rowIndex][columnIndex] .is_a?(String)
        retArray << src[rowIndex][columnIndex]
      end
      columnIndex += 1
    end
    rowIndex += 1
  end
  retArray.join(" ")
end