module FunWithStrings
  def palindrome?
    self.gsub(/\W/,'').downcase == self.gsub(/\W/,'').downcase.reverse
  end
  def count_words
    h = Hash.new(0)
    string = self.downcase.gsub(/[^a-z0-9 ]+/i, '')
    string.split.each { |x| h[x] = h[x] + 1 }
    h
  end
  def anagram_groups
    string = self.downcase.split.group_by{ |x| x.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end