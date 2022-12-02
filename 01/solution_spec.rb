require_relative 'solution'

RSpec.describe FirstDay do
  subject(:object) { FirstDay.new(input: "1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000") }

  it "returns the elf with most calories stored" do
    expect(object.max_elf_calories).to eq(24000)
  end

  it "returns the top 3 elves with most calories stored summed up" do
    expect(object.podium_elves_calories).to eq(45000)
  end
end
