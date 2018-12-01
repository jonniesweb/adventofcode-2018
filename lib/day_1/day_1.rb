require 'pry'
class Day1
  def self.count(input)
    input.split.map(&:to_i).sum
  end

  def self.count2(input)
    numbers = input.split.map(&:to_i)
    counter = 0
    numbers.cycle.each_with_object(Set.new) do |num, set|
      counter += num
      s = set.add? counter
      return counter unless s
    end
  end
end
