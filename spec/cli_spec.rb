require "spec_helper"
require "cli"

module Calculator
    describe CLI do
        
        describe "default" do
            let(:output) { capture(:stdout) { subject.default} }
            
            it "returns a welcome message" do
                expect(output).to eq("Welcome\n")
            end
        end

        describe "Calcuator" do
            context "Positive scenarios" do
                it "Test adding functionality" do
                     output = capture(:stdout) {subject.add 2, 3}
                    expect(output).to eq("5\n");
                end
            end
            context "Negetive scenarios" do
                it "Test adding functionality for characters i/p" do
                        output = capture(:stdout) {subject.add '2', 'a'}
                        expect(output.chomp).to eq("args should only mean numbers\n");
                end
            end
        end
    end
end