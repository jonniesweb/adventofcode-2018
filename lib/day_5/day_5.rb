class Day5
  attr_reader :chars
  def initialize(input)
    @chars = input.chars
  end

  def react(array = @chars)
    i = 0
    while array[i] != nil do
      # puts array.join
      # puts ' ' * i + '^^'
      a = array[i]
      b = array[i + 1]

      remove = reactive(a, b)
      # puts "#{a} #{b}" if remove
      if remove
        array.delete_at(i)
        array.delete_at(i)
        i -= 1
      else
        i += 1
      end
    end

    array.join
  end

  def smallest
    ('a'..'z').map do |letter|
      str = @chars.reject { |e| e.downcase == letter }
      result = react(str)
      result.size
    end.min
  end

  def reactive(a, b)
    a.swapcase == b
  end
end
