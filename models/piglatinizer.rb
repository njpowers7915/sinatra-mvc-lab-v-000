class PigLatinizer
  attr_reader :words
  
  def initialize(words=nil)
    @words = words
  end
  
def piglatinize(str)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(str[0])
    str + 'ay'
  elsif consonants.include?(str[0]) && consonants.include?(str[1])
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(str[0])
    str[1..-1] + str[0] + 'ay'
  else
    str + 'way'
  end
end
  
  
  def fuck(words)
    array = words.chars
    if array[0] =~ (/[aeiouAEIOU]/)
      shifted = array.join
      final = shifted + "way"
    elsif array[0] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) && array[1] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
      shifted = array.insert(-1, array.delete_at(0))
      again = shifted.insert(-1, array.delete_at(0)).join
      final = again + "ay"
    elsif array[0] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) && array[1] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) && array[2] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
      shifted = array.insert(-1, array.delete_at(0))
      again = shifted.insert(-1, array.delete_at(0))
      third = again.insert(-1, array.delete_at(0)).join
      final = third + "ay"
    else
      shifted = array.insert(-1, array.delete_at(0)).join
      final = shifted + "ay"
    end
    final
  end
    
end