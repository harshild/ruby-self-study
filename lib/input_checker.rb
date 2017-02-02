
module Calculator
  class InputChecker
    def to_i_array(*values)
      values.map {|v| Integer(v) }
    rescue ArgumentError
      raise InvalidInput.new('Something went wrong with reading the input')
    end


  end

  class InvalidInput < StandardError

  end
end
