class Day2
  def initialize(input)
    @ids = input.split.map { |line| ID.new line }
  end

  def checksum
    @ids.count(&:two) * @ids.count(&:three)
  end

  def common
    @ids.flat_map do |id|
      @ids.map do |id2|
        next if id == id2
        next unless id.common?(id2)

        return id.difference(id2)
      end
    end
  end

  class ID
    attr_reader :two, :three, :id

    def initialize(id)
      @id = id
      @chars = id.chars.group_by(&:to_s)
      @two = @chars.values.select { |c| c.size == 2 }.any?
      @three = @chars.values.select { |c| c.size == 3 }.any?
    end

    def common?(other_id)
      count = id.chars.map.with_index do |c, index|
        other_id.id[index] != c
      end.count { |e| e == true }

      count == 1
    end

    def difference(other_id)
      id.chars.map.with_index do |c, index|
        same = other_id.id[index] == c

        c if same
      end.join
    end
  end
end
