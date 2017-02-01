module Calculator
    class Util
        def is_intVal(value)
           return /\d+/=~ params[:value]
        end
    end
end