class Day3
  def initialize(input)
    @claims = input.split("\n").map { |line| Claim.new(line) }
  end

  def process
    data = build_matrix(@claims)
    data.values.reject { |count| count < 2 }.count
  end

  def build_matrix(claims)
    data = SparseMatrix.new

    claims.each do |claim|
      fill(data, claim)
    end

    # print_data(data)
    data
  end

  def fill(matrix, claim)
    x = claim.x
    y = claim.y
    while x < claim.x + claim.w do
      while y < claim.y + claim.h do
        value = matrix[x,y]
        matrix[x,y] = value.nil? ? 1 : value += 1
        y += 1
      end
      y = claim.y
      x += 1
    end
    matrix
  end

  def print_data(data)
    print "\n"
    x = y = 0
    while y < 8 do
      while x < 8 do
        print data[x,y] || 0
        x += 1
      end
      print "\n"
      y += 1
      x = 0
    end
  end

  def overlap
    matrix = build_matrix(@claims)
    @claims.each do |claim|
      overlay = fill(SparseMatrix.new, claim)
      no_overlap = overlay.keys.all? do |coordinate|
        matrix[*coordinate] == 1
      end

      return claim.id if no_overlap
    end
  end

  class Claim
    attr_reader *%i(id x y w h x2 y2)
    def initialize(str)
      match = str.match(/#(\d+) @ (\d+),(\d+): (\d+)x(\d+)/)
      @id = match[1].to_i
      @x = match[2].to_i
      @y = match[3].to_i
      @w = match[4].to_i
      @h = match[5].to_i
      @x2 = x + w
      @y2 = y + h
    end
  end

  class SparseMatrix
    def initialize
      @hash = {}
    end

    def [](row, col)
      @hash[[row, col]]
    end

    def []=(row, col, val)
      @hash[[row, col]] = val
    end

    def size
      @hash.keys.size
    end

    def values
      @hash.values
    end

    def keys
      @hash.keys
    end
  end
end
