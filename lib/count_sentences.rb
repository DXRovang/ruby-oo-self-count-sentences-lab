require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    first = self.split(/[.?!]/)
    first.map.with_index do |element, index|
      if element == ""
        first.delete_at(index)
      end
    end
    y = first.length
    y
  end
  
end