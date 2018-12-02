class FrequencyFileParser
  def initialize(input_file)
    @input_file = input_file
    @frequencies = []
  end

  def parse
    ensure_file_exists!
    File.foreach(@input_file).with_index do |line, line_number|
      line.chomp!
      unless valid_frequency_factor?(line)
        raise "Invalid frequency input line #{line_number}"
      end
      @frequencies << line
    end

    @frequencies
  end

  private

  def ensure_file_exists!
    return if File.exist?(@input_file)
    raise "Could not find input file '#{@input_file}'"
  end

  def valid_frequency_factor?(frequency_factor)
    !frequency_factor.match(/^[+-]\d+$/).nil?
  end
end
