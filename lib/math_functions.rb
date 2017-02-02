require 'logger'
require 'input_checker.rb'

module Calculator
  class MathLib
    def initialize

    end

    def add(*val)
      Calculator::InputChecker.new.to_i_array(*val).reduce(:+)
    end

    def subs(*val)
      Calculator::InputChecker.new.to_i_array(*val).reduce(:-)
    end

    def is_prime(a)
      if a<1
        return false
      end
      (2..a-1).each do |i|
        if a%i == 0
          return false
        end
      end
      true
    end
  end
end