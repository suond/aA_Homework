class Stack
    def initialize
      # create ivar to store stack here!
      stk = []
    end

    def push(el)
      # adds an element to the stack
      stk << el
    end

    def pop
      # removes one element from the stack
      stk.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      stk.first
    end
end

class Queue
    def initialize
        queue = []
    end
    def enqueue(ele)
        queue.push(ele)
    end

    def dequeue
        queue.shift
    end

    def peek
        queue.first
    end
end

class Map
    def initialize
        map = []
    end

    def set(key,value)
        if map.empty?
            map << [key,value]
        end
        map.each do |arr|
            if arr[0] == key
                arr[1] = value
            end
        end
    end

    def get(key)
        map.each do |k|
            return k[1] if k[0] == key
        end
    end

    def delete(key)
        map.each_with_index do |arr, idx|
            if arr[0] == key
                map.delete_at(idx) 
            end
        end
    end
    
    def show
        p map
    end
end