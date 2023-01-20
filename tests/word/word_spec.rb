require_relative 'word'

RSpec.describe Word do
  context 'Text word is a palindrome' do
    it 'should read the same forwards as backwards' do
      test_word = 'Madam'
      result = Word.palindrome?(test_word)
      expect(result).to be_truthy
    end
  end

  context 'Text word is not a palindrome' do
    it 'Should NOT read the same forwards as backwards' do
      test_word = 'Gentlemen'
      result = Word.palindrome?(test_word)
      expect(result).to be_falsey
    end
  end
end