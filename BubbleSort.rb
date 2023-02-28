def bubble_sort(array)
    completed = true
    while completed do
        runs = 0
        completed = false
        while runs < (array.length - 1)
            if array[runs] > array[runs+1]
                array[runs], array[runs+1] = array[runs+1], array[runs]
                completed = true
            end
            runs += 1
        end
    end
    p array
end
    
bubble_sort([4,3,78,2,0,2])