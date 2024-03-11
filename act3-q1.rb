
# This program reads the contents of a .csv file, and arranges them
# into a Ruby array, and then into a Ruby hash.

header_array = []
data_array = []
hash_array = []
is_header = 0

File.foreach("example.csv") do |line|

    if is_header == 0
        header_array << line.split(',')
        is_header = 1

    else
        data_array << line.split(',')
    end

end

# The three lines below are unused test code.
#puts header_array
#puts data_array
#puts data_array[0]

row_no = 0

data_array.each do |row|

    hash_array << {}

    (0..2).each do |x|
        hash_array[row_no][header_array[0][x]] = row[x]

        puts header_array[x]
        puts row[x]
    end

    row_no += 1

end

puts hash_array