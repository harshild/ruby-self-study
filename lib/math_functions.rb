module Calculator
    class MathLib
        def add(a,b)
            return a + b
        end

        def subs(a,b)
            return a - b;
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