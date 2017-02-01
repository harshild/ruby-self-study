require "spec_helper"
require "cli"

module Calculator
    describe CLI do
        
        describe "default" do
            
            it "returns a welcome message" do
                output = capture(:stdout) { subject.default}
                expect(output).to eq("Invalid inputs. Use --help\n")
            end
        end

        describe "User help" do
            it "returns a welcome message" do
                subject.options = {:help => true}
                output = capture(:stdout) { subject.default}                
                expect(output).to eq("Invalid inputs. Use --help\n")
            end
        end

        describe "Calculator commands" do
            context "for valid inputs and scenarios" do
                it "should add two numbers" do
                    output = capture(:stdout) {subject.add 2, 3}
                    expect(output).to eq("5\n");
                end

                it "should parse string inputs as numbers" do
                    output = capture(:stdout) {subject.add '2', '2'}
                    expect(output).to eq("4\n");
                end
            end
            context "for invalid inputs and scenarios" do
                it "should not parse string inputs if not numbers" do
                    output = capture(:stdout) {subject.add '2', 'a'}
                    expect(output.chomp).to eq("args should only mean numbers\n");
                end
            end
        end
    end
end