require 'pry'

module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret=nil)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      marker = Marker.new(@secret, guess)
      @output.puts  '+'*marker.exact_match_count +
                    '-'*marker.number_match_count
    end

    def black_or_white(spot, board)
      black_or_white = ''
      column_map = {a:0, b:1, c:2, d:3, e:4, f:5, g:6, h:7}
      File.open(board, 'r').each_line.with_index do |line, index|
        if (index+1).to_s == spot[1]
          columns = line.split(' ')
          board_spot = columns[column_map[spot[0].to_sym]]
          black_or_white = board_spot[0]
        end
      end
      black_or_white
    end

    def pawn(start_position,end_position)
      @output.puts 'LEGAL'
    end




  end
end