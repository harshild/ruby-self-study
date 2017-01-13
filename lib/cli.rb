require 'thor'

module Calculator
    class CLI < Thor
        puts "started"

        desc "default", "Default Function"
        def default
            puts "RESULT"
        end

        default_task :default

        desc "add", "Addition function"
        def add
            puts "Provide values "
        end        

    end
end