class Game(codemaker, codebreaker)
    def initialize(codemaker, codebreaker)
      @codemaker = codemaker
      @codebreaker = codebreaker
    end
    def play
      @codemaker.make_code
      @codebreaker.guess_code
      @codebreaker.check_code
    end
end 
class Codemaker
    def initialize
        @code = []
    end
    def make_code
        4.times do
        @code.push(rand(1..6))
        end
        p  @code
    end
    # def guess_code
    #   puts "Guess the code!"
    #   @codebreaker.guess_code
    # end
    # def check_code
    #   @codebreaker.check_code
    # end
end
class Codebreaker
    def initialize
        @guess = []
    end
    def guess_code
        puts "Guess the code!"
        @guess = gets.chomp.split("")
    end
    def check_code
        @guess.each_with_index do |num, i|
            if @code[i] == num
                puts "You got a match!"
                puts "You got a match of #{num} at index #{i}"
            elsif @code.include?(num) 
                puts "You got a match but in the wrong position!"
                puts  "You get colour White" 
            else
                puts "No match!"
            end
        end    
    end
end
game = Game.new(Codemaker.new, Codebreaker.new)
game.play