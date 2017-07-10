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
 #declare an array
   #array = [0,1,7,5,6,11]-->    <--
   #[-1]+[-2]=num   array<<num
   #<< to add product of last 2 items in array
 #takes a number of fibonacci terms -- argurment will be "i" for integer
 #return a new array with sum included in the -1 index
 #break if the argument number is reached

 def fib(i)
   array = [0,1]
   until array.length == i
   array<<array[-1] + array[-2]
   end
   p array
 end

 #Release 2

 # initial array = [2, 7, 4, 3, 8]
 # expected sort = [2, 3, 4, 7, 8]

 #take total number of elements in the array (n, for example)
 # create a variable "swapping" and make it equal to false
 #take n -1 (since we want the total number to be 1 less in the array- the number of times to iterate through
 #write a loop to iterate through each element in the array
 #take unsorted array and compare each element in array to element prior (greater than or less than)
 #if the amount is greater than, swap the element order with that compared element
 #break the loop once swapping is done (true)
 #print the new sorted array

 array = [2, 7, 4, 3, 8]
 def bubble_sort(array)
   n = array.length
   loop do
   swapping = false
   (n-1).times do |i|
     if array[i] > array[i + 1]
     array[i], array[i + 1] = array[i + 1], array[i]
     swapping = true
   end
 end
 break if not swapping
   end
   p array
 end

 bubble_sort(array)


