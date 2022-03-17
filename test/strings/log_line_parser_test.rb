# frozen_string_literal: true

require 'minitest/autorun'
require './lib/strings/log_line_parser.rb'

# Test LogLineParserTest exercise
class LogLineParserTest < Minitest::Test
  def test_error_message
    log_line_parser = LogLineParser.new('[ERROR]: Invalid operation')
    assert_equal 'Invalid operation', log_line_parser.message
  end

  def test_warning_message
    log_line_parser = LogLineParser.new('[WARNING]: Disk almost full')
    assert_equal 'Disk almost full', log_line_parser.message
  end

  def test_info_message
    log_line_parser = LogLineParser.new('[INFO]: File moved')
    assert_equal 'File moved', log_line_parser.message
  end

  def test_error_log_level
    log_line_parser = LogLineParser.new('[ERROR]: Disk full')
    assert_equal 'error', log_line_parser.log_level
  end

  def test_warning_log_level
    log_line_parser = LogLineParser.new('[WARNING]: Unsafe password')
    assert_equal 'warning', log_line_parser.log_level
  end

  def test_info_log_level
    log_line_parser = LogLineParser.new('[INFO]: Timezone changed')
    assert_equal 'info', log_line_parser.log_level
  end

  def test_error_reformat
    log_line_parser = LogLineParser.new('[ERROR]: Segmentation fault')
    assert_equal 'Segmentation fault (error)', log_line_parser.reformat
  end

  def test_warning_reformat
    log_line_parser = LogLineParser.new('[WARNING]: Decreased performance')
    assert_equal 'Decreased performance (warning)', log_line_parser.reformat
  end

  def test_info_reformat
    log_line_parser = LogLineParser.new('[INFO]: Disk defragmented')
    assert_equal 'Disk defragmented (info)', log_line_parser.reformat
  end
end
