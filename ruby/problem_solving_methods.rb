#Release 0: Implement a Simple Search

test_array = [42, 89, 23, 1]
def search_array(arr, numb)
    count = 0
    arr.each do |x|

      if x == numb
        return count
      end

    count +=1
    end
    nil
end



p search_array(test_array, 89)
p search_array(test_array, 1)
p search_array(test_array, 24)
p search_array(test_array, 42)


#Release 1: Calculate Fibonacci Numbers

def fib_num(number)
  count = 0 
  fib_array = [0,1]
  (number-2).times do |fib|
    num1 = fib_array[count]
    num2 = fib_array[count + 1]
    fib_num = num1 + num2
    fib_array.push(fib_num)
    count += 1
  end
  fib_array
end
p fib_num(6) == [0,1,1,2,3,5]
p fib_num(6)
p fib_num(100).last == 218922995834555169026


#Release 2: Sort an Array
#def method that searches through array and sorts each value
#compare the first and second values and swap if need to be swapped
#compare the second and third values and swap if need to be swapped
#keep doing until array length has been sorted

bubble_array = [6, 1, 45, 77, 12, 14, 5, 2, 15, 99]

def bubble_sort(arr)
  temp_num = 0

  arr.each do |number|
    number = 0
    number_2 = 1
    while (number_2 < arr.length)

      if arr[number] > arr[number_2]
        temp_num = arr[number] 
        arr[number] = arr[number_2]
        arr[number_2] = temp_num
        arr
      end

    number += 1
    number_2 += 1

    end
  end  
 arr
end

p bubble_sort(bubble_array)
p bubble_sort(bubble_array) == bubble_array.sort


