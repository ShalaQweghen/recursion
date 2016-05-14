def fibs(n)
	fibs = [0, 1]
	(n-1).times do
		fibs << (fibs[-1] + fibs[-2])
	end
	return fibs.inspect
end

puts fibs(10)

def fibs_rec(n, fibs = [0, 1])
	return fibs.inspect if n == 0 || n == 1
	fibs << (fibs[-1] + fibs[-2])
	fibs_rec(n - 1, fibs)
end

puts fibs_rec(10)