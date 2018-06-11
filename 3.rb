def change_possibilities(amount, denominations)
  combinations = Array.new(amount + 1) {0}
  combinations[0] = 1

  denominations.each do |coin|
    i = 1
    while i < combinations.length
      combinations[i] += combinations[i - coin] if i >= coin
      i += 1
    end
  end

  combinations[-1]
end
