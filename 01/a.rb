file = File.open("input.txt")
data = file.read

data = data.split("\n\n")

final = []

data.each do |d|
  d = d.split("\n").map(&:to_i)

  final << d.inject(:+)
end
