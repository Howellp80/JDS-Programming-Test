class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # split our sting into an array of individual words
    array = str.split()
    
    # iterate through and find words of length > 4
    array.each_with_index do |word, index|
      # account for trailing punctuation setup
      punctuation = ""
      size = word.length

      # test for punctuation
      ending = word.chars.last
      
      if ending == "." || ending == "?" || ending == "!" #add more if needed...
        # dont count punctuation as part of word size.
        size -= 1 
        punctuation += ending
      end

      # test if word is large enought to replace
      if size > 4
        # get the first character of the word
        front = word.chr

        # see if the front character is capatalized
        if /[[:upper:]]/.match(front)
          # it IS capitalized
          array[index] = "Marklar" + punctuation
        else  
          # it IS NOT capitalized
          array[index] = "marklar" + punctuation
        end
      end
    end

    # remake the string and return it
    string = array.join(" ")
    return string
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    a = 1     # first fib number
    b = 1     # second fib number
    sum = 0   # sum of even fib numbers

    # first 2 fib #s are odd so return 0
    if nth <= 2
      return sum
    else
      # We're starting at the 3rd fib # so skip the first two 
      nth = nth - 2

      # calculate the rest of the fib sequence
      nth.times do 
        temp = a
        a = b
        b = temp + a

        # check for even fib numbers, if even add to sum
        if b % 2 == 0
          sum += b
        end
        
      end

    # return the sum of even fib #s
    return sum
    end
  end

end
