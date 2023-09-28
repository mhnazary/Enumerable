module MyEnumerable
  def all?
    each { |item| return false unless yield item }
    true
  end

  def any?
    each { |item| return true if yield item }
    false
  end

  # method for filter
  def filter
    result = []
    each { |item| result << item if yield item }
    result
  end
end
