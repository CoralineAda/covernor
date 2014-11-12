require "covernor/version"

class SimpleCov::SourceFile
  def covered_lines
    lines - never_lines
  end
end

class SimpleCov::FileList < Array
 def lines_of_code
    covered_lines
  end
end