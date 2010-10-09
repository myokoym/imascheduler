class Calender
  def initialize
    @calender = []
  end
  attr_reader :calender
  
  def add(schedule)
    @calender.push(schedule)
  end
  
  def forward
    @calender.shift
  end
end

