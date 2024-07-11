class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiter, numbers = fetch_delimiter(numbers)

    numbers.split(delimiter).map(&:to_i).sum
  end

  private
  def self.fetch_delimiter(numbers)
    if numbers.start_with?('//')
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter = delimiter_section[2..]
    else
      delimiter = ','
    end

    numbers = numbers.gsub("\n", delimiter)
    [delimiter, numbers]
  end
end
