# StringCalculator

The `StringCalculator` is a simple Ruby class designed to handle various string inputs and perform addition on the numbers within the strings. The class supports custom delimiters, multiple delimiters, and ignores numbers greater than 1000. This project is an implementation of the String Calculator kata, demonstrating various functionalities and edge case handling.

## Features

- Add numbers from a string, with default delimiters being commas (`,`) and newlines (`\n`).
- Support for custom single-character delimiters defined in the format `//[delimiter]\n`.
- Ignore numbers greater than 1000 during addition.
- Raise an exception for negative numbers, listing all negative numbers found.

## Usage

### Adding Numbers

You can add numbers from a string using the `add` method:

```ruby
require_relative 'string_calculator'

result = StringCalculator.add("1,2,3") # => 6
result = StringCalculator.add("//;\n1;2;3") # => 6
result = StringCalculator.add("2,1001") # => 2

```
## Installation

Installation
- To use the StringCalculator class in your project, simply copy the string_calculator.rb file into your project directory and require it in your Ruby code:

```ruby
require_relative 'string_calculator'

```

### Running Tests
The project includes a set of RSpec tests to validate the functionality of the StringCalculator class. To run the tests, follow these steps:

- Ensure you have RSpec installed. If not, you can install it using the following command:

```bash
gem install rspec

```
- Run the tests from the project directory:

````bash
rspec

```
