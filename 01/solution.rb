class FirstDay
  def initialize(input:)
    @input_data = input
  end

  # Part 1
  def max_elf_calories
    self.elves.max 
  end

  # Part 2
  def podium_elves_calories
    self.elves.sort {|a, b| b <=> a}.take(3).inject(:+)
  end

  private

  def elves
    @input_data.split("\n\n").map { |d| d.split("\n").map(&:to_i).inject(:+) }
  end
end

# Check if it's been running by the command line
if __FILE__ == $0
  file = File.open('input.txt')
  solution = FirstDay.new(input: file.read)

  puts "First -> #{solution.max_elf_calories}"
  puts "Second -> #{solution.podium_elves_calories}"
end
