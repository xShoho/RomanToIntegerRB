class RomanToInt
	def romanToInt(s)
		symbols = ["I", "V", "X", "L", "C", "D", "M"]
		value = [1, 5, 10, 50, 100, 500, 1000]
		result = 0

		if s.length > 15
			raise StandardError.new 'Given string has too many characters'
		end

		if not(s.delete("IVXLCDM").empty?)
			raise StandardError.new "Given string must contain only Roman Numbers"
		end

		for i in (0..s.length - 1)
			for j in (0..symbols.length - 1)
				if i != 0
					if s[i - 1] == "I"
						if s[i] == "V"
							result -= 1
							result += 4
							break
						elsif s[i] == "X"
							result -= 1
							result += 9
							break
						end
					elsif s[i - 1] == "X"
						if s[i] == "L"
							result -= 10
							result += 40
							break
						elsif s[i] == "C"
							result -= 10
							result += 90
							break
						end
					elsif s[i - 1] == "C"
						if s[i] == "D"
							result -= 100
							result += 400
							break
						elsif s[i] == "M"
							result -= 100
							result += 900
							break
						end
					end
						
				end

				if s[i] == symbols[j]
					result += value[j]
				end
			end
		end

		return result
	end
end