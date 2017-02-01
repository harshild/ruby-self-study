require "logger"


module Calculator
    class MathLib
        def initialize
            file = File.open('debug.log', File::WRONLY | File::APPEND | File::CREAT )
            @logger = Logger.new(file)
        end

        def add(a,b)
            @logger.debug("input values are #{a} and #{b}")
            num1 = Integer(a)
            num2 = Integer(b)
            rescue ArgumentError => e
                @logger.info("#{e}")
                puts "args should only mean numbers"
                return nil
            else
            return num1 + num2
        end

        def subs(a,b)
            @logger.debug("input values are #{a} and #{b}")
            num1 = Integer(a)
            num2 = Integer(b)
            rescue ArgumentError => e
                @logger.info("#{e}")
                puts "args should only mean numbers"
                return nil
            else
            return num1 - num2
        end
        def isPrime(a)
            if(a<1)
                return false
            end
            (2..a-1).each do |i|
                if(a%i == 0)
                    return false
                end
            end
            return true;
        end
    end
end