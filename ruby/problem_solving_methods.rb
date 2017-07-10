#Release 0
def search_array(array,i)
  is_included=array.include?(i)
  if is_included
    array.each_with_index do |number,indx|
      if i==number
      p indx
        end
      end
    else
    p nil
  end
end

array [1, 3, 5, 7, 9]

search_array([1,3,5,7,9],9)




