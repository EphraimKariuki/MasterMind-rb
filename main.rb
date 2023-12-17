class Game
    def initialize(codemaker, codebreaker)
      @codemaker = codemaker
      @codebreaker = codebreaker
      @code = @codemaker.code
      @guess = @codebreaker.guess
    end
    def play
        make_code
        guess_code
        check_code
    end
    def make_code
        4.times do
            @code.push(rand(1..4))
        end
        p  @code

    end
    def guess_code
        puts "Guess the code!"
        puts "#{@code}"
        @guess = gets.chomp.split("")
        puts "#{@guess}"
    end
    def check_code

        @guess.each_with_index do |num, i|
          if @code[i].to_s == num
            puts "You got a match!"
            puts "You got a match of #{num}"
          elsif @code.include?(num) 
            puts "You got a match but in the wrong position!"
            puts  "You get colour White" 
          else
            puts "No match!"
          end
        end
    end
end 
class Codemaker
    attr_accessor :code
    def initialize
        @code = []
    end
end
class Codebreaker
    attr_accessor :guess
    def initialize
        @guess = []
    end
end
game = Game.new(Codemaker.new, Codebreaker.new)
game.play