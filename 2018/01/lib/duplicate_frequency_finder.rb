class DuplicateFrequencyFinder
  def initialize(frequencies, initial_frequency = 0)
    @frequencies = frequencies
    @frequency = initial_frequency
    @seen_frequencies = {}
  end

  def evaluate
    loop do
      @frequencies.each do |frequency_factor|
        @frequency += frequency_factor
        update_seen_frequencies
        return @frequency if duplicate_found?
      end
    end
  end

  private

  def update_seen_frequencies
    @seen_frequencies[@frequency] ||= 0
    @seen_frequencies[@frequency] += 1
  end

  def duplicate_found?
    @seen_frequencies[@frequency] > 1
  end
end
