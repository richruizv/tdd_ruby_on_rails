class Word
  def self.palindrome?(word)
    word.downcase == word.downcase.reverse
  end
end