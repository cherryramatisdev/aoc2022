file = File.open("input.txt")
data = file.read

data = data.split("\n\n")

final = []

data.each do |d|
  d = d.split("\n").map(&:to_i)

  final << d.inject(:+)
end

podium = []

for i in 0..2 do
  podium << final.max 
  final.delete_at(final.index(final.max))
end

p podium.inject(:+)
