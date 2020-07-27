=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end
class Array

  def keep
    array = []
    self.each{ |element| array << element if yield(element) }
    array
  end

  def discard
    array = []
    self.each{ |element| array << element unless yield(element) }
  end
end 
