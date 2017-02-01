require 'thor'
require 'math_functions.rb'

module Calculator
    class CLI < Thor

        desc "default", "Default Function"
        def default
            say "Welcome"
        end

        default_task :default
        desc "add", "Addition function"
        def add(a, b)
            mathLib = Calculator::MathLib.new()
            say mathLib.add(a, b)
        end        

    end
end