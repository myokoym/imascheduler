class Schedule
  def initialize(date, time, type, comp, name)
    @date = date
    @time = time
    @type = type
    @comp = comp
    @name = name
  end
  attr_reader :date, :time, :type, :comp, :name
end

