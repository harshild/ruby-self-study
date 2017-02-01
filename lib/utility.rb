module Calculator
    class Utility
        def is_intVal(value)
           return /\d+/=~ params[:value]
        end
    end
end