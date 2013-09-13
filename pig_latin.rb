class PigLatin
  VOWELS = ['a', 'e', 'i', 'o', 'u']
  def self.translate(english)
    english.split(' ').collect do |fragment|
      word, punctuation = fragment.match(/([a-zA-Z]+)(\W*)/).captures
      "#{translate_word_to_pig_latin(word)}#{punctuation}"
    end.join(' ')
  end

  private

  def self.translate_word_to_pig_latin(english_word)
    first_letter = english_word[0]
    word = translate_single_english_word(english_word, first_letter)
    first_letter.upcase == first_letter ? word.capitalize : word
  end

  def self.translate_single_english_word(english_word, first_letter)
    base_string = english_word[1..-1]
    if VOWELS.include?(first_letter)
      "#{english_word}ay"
    else
      "#{base_string}#{first_letter}ay"
    end
  end
end