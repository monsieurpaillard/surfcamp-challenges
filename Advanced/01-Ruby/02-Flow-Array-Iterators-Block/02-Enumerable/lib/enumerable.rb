def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
  sum = 0
  array.each_with_index do |element, index|
    sum += element if index.odd?
  end
  return sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
end

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce

  product = 1
  array.each do |element|
    product *= element
  end
  product

  array.reduce(&:*)

  # & : operateur unaire
  { |element| element.send(:method) }  # element.method
  &:method
end


students = [
  Struct.new(name: "Seb", age: 29),  # student.name
  Struct.new(name: "Romain", age: nil)
]

# TODO. map
students.map { |element| element.send(:name) }
students.map(&:name)

[ "Seb", "Romain" ]


def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
  tableau_trie = []
  array.each_slice(2) do |slice|
    tableau_trie.push(slice.sort)
  end
  return tableau_trie

  array.each_slice(2).map &:sort
end


