def stock_picker(stocks)
	profit = 0
	buy = 0
	sell = 0
	stocks.each do |day|
		i = stocks.index(day) + 1	
		while  i < stocks.length do
			if (day - stocks[i]) < profit
				profit = (day - stocks[i])
				buy = stocks.index(day)
				sell = i
			end
			i += 1
		end
	end
final = [buy, sell]
puts final
end
