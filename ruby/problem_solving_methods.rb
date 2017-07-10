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

#Release 1
 +#declare an array
 +  #array = [0,1,7,5,6,11]-->    <--
 +  #[-1]+[-2]=num   array<<num
 +  #<< to add product of last 2 items in array
 +#takes a number of fibonacci terms -- argurment will be "i" for integer
 +#return a new array with sum included in the -1 index
 +#break if the argument number is reached
 +
 +def fib(i)
 +  array = [0,1]
 +  until array.length == i
 +  array<<array[-1] + array[-2]
 +  end
 +  p array
 +end


