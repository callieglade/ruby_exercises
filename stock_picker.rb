def stock_picker(prices)
    result = []
    most_profit = 0
    buy, sell = 0, 0
    lowest = prices.sort
    highest = lowest.reverse
    lowest.each do |l|
        highest.each do |h|
            profit = h - l
            if prices.index(l) < prices.index(h)
                if profit > most_profit
                    most_profit = profit
                    buy = l
                    sell = h 
                end
            end
        end
    end
    return {:buy => buy, :sell => sell, :profit => most_profit}
end

prices = [17,3,6,9,15,8,6,1,10]
stock = stock_picker(prices)
puts "Buy on day: #{prices.index(stock[:buy])} "
puts "Sell on day: #{prices.index(stock[:sell])} "
puts "Profit: $#{stock[:sell]} - $#{stock[:buy]} = $#{stock[:profit]} "