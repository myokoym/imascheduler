class Calender
  def initialize
    @calender = []
  end
  attr_reader :calender
  
  def add(schedule)
    @calender.push(schedule)
  end
  
  def forward
    @calender.reject! {|s| s.date == 0 }
    @calender.map {|s| s.date -= 1 }
  end
end

