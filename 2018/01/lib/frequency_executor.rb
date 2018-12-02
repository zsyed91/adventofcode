class FrequencyExecutor
  def initialize(frequencies, initial_frequency = 0)
    @frequencies = frequencies
    @frequency = initial_frequency
  end

  def evaluate
    @frequency += @frequencies.map(&:to_i).sum
  end
end
