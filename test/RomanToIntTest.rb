require './src/RomanToInt'

describe RomanToInt do
	describe '#romanToInt' do
		context 'Given I' do
			it 'should return 1' do
				expect(subject.romanToInt("I")).to eql(1)
			end
		end

		context 'Given III' do
			it 'should return 3' do
				expect(subject.romanToInt("III")).to eql(3)
			end
		end

		context 'Given IV' do
			it 'should return 4' do
				expect(subject.romanToInt("IV")).to eql(4)
			end
		end

		context 'Given LVIII' do
			it 'should return 58' do
				expect(subject.romanToInt("LVIII")).to eql(58)
			end
		end

		context 'Given MCMXCIV' do
			it 'should return 1994' do
				expect(subject.romanToInt("MCMXCIV")).to eql(1994)
			end
		end
	end
end