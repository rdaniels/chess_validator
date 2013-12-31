module RobotsVsLasers
  class Robots
    attr_accessor :boxing_charge, :notes

    def initialize(input = nil)
      @input = input
      if input == nil
        puts "Usage: ruby robots.new(input.txt)"
        exit(1)
      end
    end



  end
end