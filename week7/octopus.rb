def find_longest_fish(arr)
    longest = arr.first

    arr.each_with_index do |ele,idx|
        (idx+1...arr.length).each do |jdx|
            if longest.length < arr[jdx].length
                longest = arr[jdx]
            end
        end
    end
    longest
end

def merge_sort (array, &prc)
    return array if array.length <= 1

    mid_idx = array.length / 2
    merge(
      merge_sort(array.take(mid_idx), &prc),
      merge_sort(array.drop(mid_idx), &prc),
      &prc
    )
    
  end

  # NB: In Ruby, shift is an O(1) operation. This is not true of all languages.
  def merge(left, right, &prc)
    merged_array = []
    prc = Proc.new { |fish1, fish2| fish1.length <=> fish2.length } unless block_given?
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged_array << left.shift
      when 0
        merged_array << left.shift
      when 1
        merged_array << right.shift
      end
    end
    merged_array + left + right
  end

  def linear_search(arr)
    longest = ""
    arr.each {|ele| longest = ele if longest.length < ele.length}
    longest
  end

a = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#n^2
p find_longest_fish(a)
#nlogn
p merge_sort(a).last
#linear
p linear_search(arr)
#=======================Dancing Octopus==========================

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles)
    tiles.each_with_index {|e, idx| return idx if e == dir }
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}


def fast_dance(dir, hash)
    hash[dir]
end

p slow_dance("up",tiles_array)
p slow_dance("left",tiles_array)

p fast_dance("up",tiles_hash)
p fast_dance("left",tiles_hash)

