# frozen_string_literal: true
$LOAD_PATH.unshift('lib')

require 'frequency_file_parser'
require 'duplicate_frequency_finder'

input_file = ARGV[0]

parser = FrequencyFileParser.new(input_file)
frequencies = parser.parse

duplicate_finder = DuplicateFrequencyFinder.new(frequencies)
puts duplicate_finder.evaluate
