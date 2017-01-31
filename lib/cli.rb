require 'thor'

module Calculator
    class CLI < Thor

        desc "default", "Default Function"
        def default
            say "Welcome"
            return "Welcome"
        end

        default_task :default

        desc "add", "Addition function"
        def add
            puts "Provide values "
        end        

    end
end