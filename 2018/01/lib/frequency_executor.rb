class FrequencyExecutor
  def initialize(frequencies, initial_frequency = 0)
    @frequencies = frequencies
    @frequency = initial_frequency
  end

  def evaluate
    @frequency += @frequencies.sum
  end
end
