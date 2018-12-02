# frozen_string_literal: true
$LOAD_PATH.unshift('lib')

require 'frequency_file_parser'
require 'frequency_executor'

input_file = ARGV[0]

parser = FrequencyFileParser.new(input_file)
frequencies = parser.parse

executor = FrequencyExecutor.new(frequencies)
puts executor.evaluate
