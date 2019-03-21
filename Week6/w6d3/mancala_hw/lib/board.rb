class Board
  attr_accessor :cups

  def initialize(name1, name2)
      @name1 = name1
      @name2 = name2
      @cups = Array.new(14) { Array.new }
      place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |ele, idx|
        if !(idx == 6 || idx == 13)
            4.times do
              ele << :stone 
            end
        end
    end
  end

  def valid_move?(start_pos)
    if start_pos > 12 || start_pos < 0
      raise "Invalid starting cup"
    end

    if @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
      cup_to_increase = start_pos
      stones = @cups[start_pos]
      @cups[start_pos] = []
      while !stones.empty?
         cup_to_increase += 1
         cup_to_increase = 0 if cup_to_increase > 13
          if cup_to_increase == 6
             @cups[6] << stones.pop if current_player_name == @name1 
          elsif cup_to_increase == 13
             @cups[13] << stones.pop if current_player_name == @name2 
          else
            @cups[cup_to_increase] << stones.pop
          end
      end
      render
      next_turn(cup_to_increase)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    end
     if @cups[ending_cup_idx].length == 1
      return :switch
     end
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
      @cups[0..5].all? { |cup| cup.empty?} || @cups[7..12].all? { |cup| cup.empty?}
  end

  def winner
    result = @cups[6] <=> @cups[13]

    if result == 0
      :draw
    else
      result == 1 ? @name1 : @name2
    end
  end
end
