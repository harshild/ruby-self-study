require 'spec_helper'
require 'cli'

module Calculator
    describe CLI do
        
        describe 'default action' do
            it 'returns a error message' do
                output = capture(:stdout) { subject.default}
                expect(output).to eq("Invalid inputs. Use --help\n")
            end
        end

        describe 'calculator command' do
            describe 'add' do
                context 'for valid inputs and scenarios' do
                    it 'should add two numbers' do
                        output = capture(:stdout) {subject.add 2, 3}
                        expect(output).to eq("5\n")
                    end

                    it 'should parse string inputs as numbers' do
                        output = capture(:stdout) {subject.add '2', '2'}
                        expect(output).to eq("4\n")
                    end
                end
                context 'for invalid inputs and scenarios' do
                    it 'should not parse string inputs if not numbers' do
                        output = capture(:stdout) {subject.add '2', 'a'}.chomp
                        expect(output).to eq('Something went wrong with reading the input')
                    end
                end
            end 
            describe 'substract' do
                context 'for valid inputs and scenarios' do
                    it 'should substract two numbers' do
                        output = capture(:stdout) {subject.substract 2, 3}
                        expect(output).to eq("-1\n")
                    end

                    it 'should parse string inputs as numbers and substract' do
                        output = capture(:stdout) {subject.substract '2', '2'}
                        expect(output).to eq("0\n")
                    end
                end
                context 'for invalid inputs and scenarios' do
                    it 'should not parse string inputs if not numbers' do
                        output = capture(:stdout) {subject.substract '2', 'a'}.chomp
                        expect(output).to eq('Something went wrong with reading the input')
                    end
                end
            end
        end
    end
end