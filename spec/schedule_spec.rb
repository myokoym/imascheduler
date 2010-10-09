require "schedule"

describe Schedule do
  it "create schedule" do
    date = "0"
    time = "morning"
    type = "stylist"
    comp = "クリエイトワークス"
    name = "YUTAKA"
    schedule = Schedule.new(date, time, type, comp, name)
    schedule.date.should == date
    schedule.time.should == time
    schedule.type.should == type
    schedule.comp.should == comp
    schedule.name.should == name
  end
end

