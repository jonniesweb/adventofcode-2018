require 'pry'
class Day1
  def self.count(input)
    input.split.map(&:to_i).sum
  end
end
