require "calender"

describe Calender do
  subject { Calender.new }
  
  before do
    date = "0"
    time = "morning"
    type = "stylist"
    comp = "クリエイトワークス"
    name = "YUTAKA"
    @schedule = Schedule.new(date, time, type, comp, name)
  end
  
  it "add schedule" do
    subject.add(@schedule)
    calender = subject.calender
    calender[0].date.should == @schedule.date
    calender[0].time.should == @schedule.time
    calender[0].type.should == @schedule.type
    calender[0].comp.should == @schedule.comp
    calender[0].name.should == @schedule.name
  end
  
  it "forward schedule" do
    subject.add(@schedule)
    subject.add(@schedule)
    subject.forward
    calender = subject.calender
    calender.size.should == 1
  end
end

