prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker (prices)
    buy_options = prices[0..-2]
    sell_options = prices[1..-1]
    arr = []
    buy_options.each_with_index do |buy_price, index|
        sell_options[index..-1].each do |sell_price|
            puts sell_price - buy_price
        end
    end
end

stock_picker(prices)