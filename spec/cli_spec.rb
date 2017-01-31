require "spec_helper"
require "cli"

module Calculator
    describe CLI do
        @data = "test"
        def command(options = {})
            options.each do |key, value|
            options[key] = Thor::Option.parse(key, value)
            end

            @command ||= Thor::Command.new(:can_has, "I can has cheezburger", "I can has cheezburger\nLots and lots of it", "can_has", options)
        end
        describe "default" do
            it "should show welcome message" do
                object = Struct.new(:namespace, :arguments).new("foo", [])
                expect(command(:bar => :required).formatted_usage(object)).to eq("foo:can_has --bar=BAR")
            end
        end

        context "default" do
            let(:output) { capture(:stdout) { @data } }
            
            it "returns a welcome message" do
                puts "HA == #{output}"
                expect(@data).to eq("Welcome")
                expect(output).to include(" * version2-example")
            end
        end
    end
end 