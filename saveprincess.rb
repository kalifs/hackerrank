require 'matrix'
@mover = nil
def displayPathtoPrincess(n,grid)
  @mover ||= Mover.new(grid)
  @mover.move
end

class Mover
  PRINCESS = "p"
  BOT = "m"
  EMPTY = "-"
  MOVES = {
    :up => "UP",
    :right => "RIGHT",
    :left => "LEFT",
    :down => "DOWN"
  }

  attr_reader :bot, :princess, :grid

  def initialize(grid)
    @grid = grid.map(&:chomp).map{|str| str.split("") }
    @princess = nil
    @bot = nil
    @moves = []
    set_position(:@princess, PRINCESS)
  end

  def move
    set_position(:@bot, BOT)
    # puts grid.map(&:join).join("\n")
    # puts
     # p "#{@bot.inspect}    #{@princess.inspect}"
    if Matrix[bot] == Matrix[princess]
      @moves.each do |m|
         puts m
      end
    else
      vector = ((Matrix[bot] - Matrix[princess]) * -1).to_a.first
      # p bot
      # p vector
      grid[bot[0]][bot[1]] = EMPTY
      current_move = (if vector[1].abs > vector[0].abs
        if vector[1] < 0
          grid[bot[0]][bot[1]-1] = BOT
          MOVES[:left]
        else
          grid[bot[0]][bot[1]+1] = BOT
          MOVES[:right]
        end
      else
        if vector[0] < 0
          grid[bot[0]-1][bot[1]] = BOT
          MOVES[:up]
        else
          grid[bot[0]+1][bot[1]] = BOT
          MOVES[:down]
        end
      end)
      @moves << current_move
      sleep 0.5
      self.move
    end
  end

  private

  def set_position(variable, sym)
    instance_variable_set(variable, nil)
    grid.each_with_index do |row, r|
      row.each_with_index do |col, c|
        if grid[r][c] == sym
          instance_variable_set(variable, [r, c])
          break
        end
      end
      break if instance_variable_get(variable)
    end
  end
end

# p----
# -----
# -----
# -----
# ---m-
# ["p----","-----","-----","-----","---m-"]
# displayPathtoPrincess(3, ["-----","----p","-----","-----","---m-"])
