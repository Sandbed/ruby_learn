class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line = @line.gsub(/\[\w+\]\:/, '')
    @line.strip!
  end

  def log_level
    @line.match(/\[\w+\]\:/)[0].gsub(/[\[+\]+\:]/, '').downcase
  end

  def reformat
    lv = log_level
    "#{message} (#{lv})"
  end
end
