{
  event: "devsumi",
  location: "Fukuoka",
  year: 2019,
  season: :summer
}.each_pair do
  puts "Key: #{@1.inspect}, Value: #{@2.inspect}"
end

p "sum of 1..100"
p (1..100).to_a.inject { @1 + @2 }
