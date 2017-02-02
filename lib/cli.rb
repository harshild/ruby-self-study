require 'thor'
require 'math_functions.rb'

module Calculator
  class CLI < Thor

    desc 'default', 'Default Function'
    def default
      puts 'Invalid inputs. Use --help'
    end

    default_task :default
    desc 'add', 'Addition function'
    def add(*val)
      puts Calculator::MathLib.new.add(*val)
    rescue Exception => e
      puts e.message
    end
    desc 'substract', 'Substraction function'
    def substract(*val)
      puts Calculator::MathLib.new.subs(*val)
    rescue Exception => e
      puts e.message
    end
  end
end