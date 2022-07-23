prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker (prices)
    buy_options = prices[0..-2]
    sell_options = prices[1..-1]
    best = [0, 0, 0] # [profit, buy day, sell day]
    buy_options.each_with_index do |buy_price, buy_index|
        sell_options[buy_index..-1].each_with_index do |sell_price, sell_index|
            if (sell_price - buy_price) > best[0]
                best = [(sell_price - buy_price), (buy_index), (sell_index + buy_index + 1)]
            end
        end
    end
    return best[1..-1]
end

puts stock_picker(prices)