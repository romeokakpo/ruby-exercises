def stock_picker(prices)
  return [] if prices.empty?

  min_idx = 0
  min = prices[min_idx]
  res = {"diff":0, "idx": [0,0]}

  prices.each_with_index do |price, i|
    if price < min 
      min = price
      min_idx = i
    elsif price - min > res[:diff]
        res[:diff] = price - min
        res[:idx] = [min_idx,i]
    end
  end
  res[:idx]
end

p stock_picker([17,3,6,9,15,8,6,1,10])