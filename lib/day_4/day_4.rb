class Day4
  def initialize(input)
    @guards = {}
    current_guard = nil
    @entries = input.split("\n").sort.map do |line|
      guard = line.match(/#(\d+)/)&.values_at(1)
      current_guard = guard[0].to_i if guard
      Entry.new(line, current_guard)
    end
  end

  def strategy_1
    populate

    most_minutes_guard = @guards.values.max_by(&:minutes_asleep)
    frequent_minute = most_minutes_guard.frequent_minute.fetch(0)
    most_minutes_guard.id * frequent_minute
  end

  def strategy_2
    populate

    most_frequent_minute_guard = @guards.values.max_by do |guard|
      guard.frequent_minute.fetch(1)
    end
      
    guard_id = most_frequent_minute_guard.id
    minute = most_frequent_minute_guard.frequent_minute.fetch(0)

    guard_id * minute
  end

  def populate
    guard_id = nil
    current_count = 0
    start_minute = nil
    @entries.each do |entry|
      case entry.type
      when 'g'
        guard_id = entry.guard
      when 'f'
        start_minute = entry.minute
      when 'w'
        guard = fetch_guard(guard_id)
        guard.add_sleep(start_minute, entry.minute)
        start_time = nil
      end
    end
  end

  def fetch_guard(id)
    @guards[id] ||= Guard.new(id)
  end

  class Guard
    attr_reader :id
    def initialize(id)
      @id = id
      @sleeps = []
    end

    def add_sleep(start_minute, end_minute)
      @sleeps << Sleep.new(start_minute, end_minute)
    end

    def minutes_asleep
      @minutes_asleep ||= @sleeps.map(&:total_minutes).reduce(&:+)
    end

    def frequent_minute
      @sleeps.each_with_object(Hash.new(0)) do |sleep, hash|
        (sleep.start_minute...sleep.end_minute).each do |minute|
          hash[minute] += 1
        end
      end.entries.max_by do |minute, frequency|
        frequency
      end
    end
  end

  class Sleep
    attr_reader :start_minute, :end_minute
    def initialize(start_minute, end_minute)
      @start_minute = start_minute
      @end_minute = end_minute
    end

    def total_minutes
      @end_minute - @start_minute
    end
  end

  class Entry
    attr_reader *%i(year month day hour minute guard type)

    def initialize(line, guard)
      match = line.match(/\[(\d+)-(\d+)-(\d+) (\d+):(\d+)] (.*)/)
      @year = match[1]
      @month = match[2]
      @day = match[3]
      @hour = match[4]
      @minute = match[5].to_i
      @guard = guard
      @type = match[6][0].downcase
    end
  end
end
