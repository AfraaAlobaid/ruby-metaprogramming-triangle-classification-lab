class Triangle
  # write code here
  #attr_accessor :kind

  def initialize(e1, e2, e3)
    @ed = []
    @ed << e1
    @ed << e2
    @ed << e3
  end

  def kind
    if @ed.any? {|e| e <= 0} || !valid?
      raise TriangleError
    #elsif @ed.any? {|e| e < 0}
    elsif @ed.count(@ed[0]) == 3
      return :equilateral
    elsif @ed.any? {|e| @ed.count(e) == 2}
      return :isosceles
    else 
      return :scalene 
    end
  end

  def valid?
    if @ed[0] + @ed[1] > @ed[2] && @ed[1] + @ed[2] > @ed[0] && @ed[2] + @ed[0] > @ed[1]
      return true
    else
      return false
    end
  end

  class TriangleError < StandardError 
  end

end
