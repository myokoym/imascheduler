require "schedule"

describe Schedule do
  it "create schedule" do
    date = 0
    time = "1"
    type = "1"
    comp = "クリエイトワークス"
    name = "YUTAKA"
    schedule = Schedule.new(date, time, type, comp, name)
    schedule.date.should == date
    schedule.time.should == time
    schedule.type.should == type
    schedule.comp.should == comp
    schedule.name.should == name
  end
  
  it "date can write" do
    date = 1
    time = "1"
    type = "1"
    comp = "クリエイトワークス"
    name = "YUTAKA"
    schedule = Schedule.new(date, time, type, comp, name)
    schedule.date.should == date
    new_date = 0
    schedule.date = new_date
    schedule.date.should == new_date
  end
end

