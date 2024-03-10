

new_list = []

File.foreach("example.csv") do |line|
    new_list << line

end