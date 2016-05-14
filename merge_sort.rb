# Modified Deepak5050's

def merge_sort(ary)
	return ary if ary.size <= 1
	a = merge_sort(ary[0..(ary.size/2)-1])
	b = merge_sort(ary[ary.size/2..-1])

	sorted = []

	until a.empty? || b.empty?
		sorted << (a[0] <= b[0] ? a.shift : b.shift)
	end
	sorted + a + b
end

puts merge_sort([6, 8, 1, 19, 2, 3, 6, 5, 9, 1])