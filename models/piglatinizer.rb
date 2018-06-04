class PigLatinizer
  attr_reader :words
  
  def initialize(words=nil)
    @words = words
  end
  
  def piglatinize(words)
    array = words.chars
    if array[0] =~ (/[aeiouAEIOU]/)
      shifted = array.join
      final = shifted + "way"
    elsif array[0] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/) && array[1] =~ (/[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
      shifted = array.insert(-1, array.delete_at(0))
      again = shifted.insert(-1, array.delete_at(0)).join
      final = again + "ay"
    else
      shifted = array.insert(-1, array.delete_at(0)).join
      final = shifted + "ay"
    end
    final
  end
    
end