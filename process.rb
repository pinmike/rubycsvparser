require 'csv'

inputData = CSV.read('exampleinput.csv')

dates = Array.new
indexes	= Array.new
outputDataArray = Hash.new()

inputData.each do |csvline|

	idx = csvline[0]
	dt = csvline[1]
	val = csvline[2]

	# TODO
	outputDataArray[dt][idx] = val
	
	unless dates.include?(dt)
		dates.push(dt)
	end

	unless indexes.include?(idx)
		indexes.push(idx)
	end
end

dates.sort
indexes.sort

puts outputDataArray
