def stock_picker(array)
    index_end = array.length - 1
    max_profit = 0
    days = []

    array.each_with_index do |value, index|
      array[index..index_end].each_with_index do |value2,index2|
        profit = value2 - value
        if profit > max_profit
            max_profit = profit
            days = [index, (index2 + index)]
            next
        end
      end
    end
    p days
end
      
  stock_picker([17,3,6,9,15,8,6,1,10])