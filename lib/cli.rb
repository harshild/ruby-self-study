require 'thor'
require 'math_functions.rb'

module Calculator
    class CLI < Thor

        desc "default", "Default Function"
        def default
            say "Invalid inputs. Use --help"
        end

        default_task :default
        desc "add", "Addition function"
        def add(a, b)
            mathLib = Calculator::MathLib.new()
            say mathLib.add(a, b)
        end    
        desc "substract", "Substraction function"
        def substract(a, b)
            mathLib = Calculator::MathLib.new()
            say mathLib.subs(a, b)
        end       

    end
end