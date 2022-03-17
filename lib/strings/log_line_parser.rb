# frozen_string_literal: true

# LogLineParser exercise
class LogLineParser
  def initialize(line)
    @line = line
  end

  # Get message from a log line
  def message
    @line.split(':').last.strip
  end

  # Get log level from a log line
  def log_level
    open_bracket_index = @line.index('[')
    close_bracket_index = @line.index(']')
    @line.slice(open_bracket_index + 1, close_bracket_index - 1).downcase
  end

  # Reformat a log line
  def reformat
    "#{message} (#{log_level})"
  end
end
