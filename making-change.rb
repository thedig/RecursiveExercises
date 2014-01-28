def make_change(amount, coins = [10,7,1])
	best_change = []
	return best_change if amount == 0
	coins.each_with_index do |coin, ind|
		current_change = []
		next if amount < coin
		new_amt = amount - coin
		current_change = [coin]
		current_change = current_change + make_change(new_amt, coins[ind..-1])
		if best_change.length > current_change.length || best_change.empty?
			best_change = current_change 
		end
	end
	best_change
end

p make_change(14)