class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr = [])
    @internal_arr = input_arr
    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_ele)
    @internal_arr.insert(new_ele)
    # @internal_arr.insert(-1)
    # Hint: Use the Array#insert method.
    # raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    @internal_arr.fetch(index, nil)
    # raise NotImplementedError.new("You need to implement the [] method!")
  end

  # def first_larger_index(target, start_ind = 0, end_ind = @internal_arr.size)
  #   if target > end_ind
  #     return nil
  #   elsif 
      
def first_larger_index(target, start_ind = 0, end_ind = @internal_arr.size)
    if @internal_arr.empty? #if array is empty, nothing returned
      return 0
      #this next part's tricky: if the start index is larger/equal to end
      #then the code stops, because you've reached the middle
    elsif start_ind >= end_ind 
      return end_ind
    else
      #otherwise, the above is hitting the below until they meet
      mid_ind = ( end_ind + start_ind ) / 2 
      if target > @internal_arr[ mid_ind ]
        return first_larger_index(target, start_ind, mid_ind)
      else 
        return first_larger_index(target, mid_ind + 1, end_ind)
      end 
    end

    raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end

