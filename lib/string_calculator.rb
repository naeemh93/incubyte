class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiter, numbers = fetch_delimiter(numbers)

    number_list = numbers.split(delimiter).map(&:to_i)

    negative_numbers = number_list.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

    number_list.reject { |n| n > 1000 }.sum
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
