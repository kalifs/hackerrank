require 'matrix'
@mover = nil
def next_move x, y, grid
  @mover ||= Mover.new
  @mover.move(x, y, grid)
end

class Mover
  DIRT = "d"
  BOT = "b"
  EMPTY = "-"
  FOG = "o"
  MOVES = {
    :up => "UP",
    :right => "RIGHT",
    :left => "LEFT",
    :down => "DOWN",
    :clean => "CLEAN"
  }

  attr_reader :bot, :dirts, :grid

  def initialize
    @grid = nil
    @princess = nil
    @visible_grid = nil
    @dirts = []
  end

  def move(x, y, current_grid)
    @grid = current_grid.map(&:chomp).map{|str| str.split("") }
    @visible_grid ||= grid

    update_world_view
    @bot = [x, y]
    set_positions()

    # puts grid.map(&:join).join("\n")
    # p @dirts
    # p @bot
    closest_dirt_dist = get_closest_dirt()
      # p (closest_dirt_dist * -1).to_a.first

    if closest_dirt_dist
      move_bot(closest_dirt_dist)
    else
      rows = [0, 0]
      cols = [0, 0]
      0.upto(grid.size) do |r|
        # if grid[] look how much fog on all sides there are after visibility area of bot
      end
      move_bot(Matrix[bot] - Matrix[[grid.size - 1, grid.size - 1]])
    end

  end

  private

  def move_bot(closest_dirt_dist)
    vector = (closest_dirt_dist * -1).to_a.first
    puts( if on_dirt?(vector)
      dirts.delete(bot)
      MOVES[:clean]
    else
      if vector[1].abs > vector[0].abs
        if vector[1] < 0
          MOVES[:left]
        else
          MOVES[:right]
        end
      else
        if vector[0] < 0
          MOVES[:up]
        else
          MOVES[:down]
        end
      end
    end)
  end

  def set_positions
    grid.each_with_index do |row, r|
      row.each_with_index do |col, c|
        if grid[r][c] == DIRT
          @dirts << [r,c] unless @dirts.include?([r,c])
        end
      end
    end
  end

  def get_closest_dirt
    closest_dist = grid.first.size ** 2 + 1
    result = nil
    dirts.each do |dirt|
      vector = (Matrix[bot] - Matrix[dirt])
      dist = vector.to_a.first.inject(0){|sum, n| sum + n.abs }
      if dist < closest_dist
        closest_dist = dist
        result = vector
      end
    end

    result
  end

  def on_dirt?(vector)
    vector[0] == 0 && vector[1] == 0
  end

  def update_world_view
    grid.each_with_index do |row, r|
      row.each_with_index do |col, c|
        if grid[r][c] != FOG
          @visible_grid[r][c] = grid[r][c]
        end
      end
    end
  end
end

# p----
# -----
# -----
# -----
# ---m-


next_move(1,0, ["--ooo","b-ooo","--ooo","ooooo","ooooo"])
