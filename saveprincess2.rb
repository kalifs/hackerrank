require 'matrix'
@mover = nil
def nextMove(n,row,col,grid)
  @mover ||= Mover.new(grid)
  @mover.move(row, col)
end

class Mover
  PRINCESS = "p"
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
    @bot = []
    set_princess_position
  end

  def move(row, col)
    @bot[1] = row
    @bot[0] = col

    vector = ((Matrix[bot] - Matrix[princess]) * -1).to_a.first
    puts (if vector[0].abs > vector[1].abs
      if vector[0] < 0
        MOVES[:left]
      else
        MOVES[:right]
      end
    else
      if vector[1] < 0
        MOVES[:up]
      else
        MOVES[:down]
      end
    end)
  end

  private

  def set_princess_position
    grid.each_with_index do |row, r|
      row.each_with_index do |col, c|
        if grid[c][r] == PRINCESS
          @princess = [r, c]
          break
        end
      end
      break if @princess
    end
  end
end
