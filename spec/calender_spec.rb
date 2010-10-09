require "calender"

describe Calender do
  subject { Calender.new }
  
  before do
    date0 = 0
    time0 = "2"
    type0 = "2"
    comp0 = "game huck"
    name0 = "G.Gonda"
    @schedule0 = Schedule.new(date0, time0, type0, comp0, name0)
    
    date1 = 1
    time1 = "1"
    type1 = "1"
    comp1 = "クリエイトワークス"
    name1 = "YUTAKA"
    @schedule1 = Schedule.new(date1, time1, type1, comp1, name1)
    
    date2 = 2
    time2 = "1"
    type2 = "1"
    comp2 = "TOKACHI studio"
    name2 = "HUKUKO"
    @schedule2 = Schedule.new(date2, time2, type2, comp2, name2)
  end
  
  it "add schedule" do
    subject.add(@schedule0)
    calender = subject.calender
    calender[0].should == @schedule0
    calender[0].date.should == @schedule0.date
    calender[0].time.should == @schedule0.time
    calender[0].type.should == @schedule0.type
    calender[0].comp.should == @schedule0.comp
    calender[0].name.should == @schedule0.name
  end
  
  it "forward schedule 0 to reject" do
    subject.add(@schedule1)
    subject.add(@schedule0)
    subject.add(@schedule2)
    subject.forward
    calender = subject.calender
    calender.size.should == 2
    calender[0].should == @schedule1
    calender[1].should == @schedule2
  end
  
  it "forward schedule 1 to 0" do
    subject.add(@schedule1)
    subject.forward
    calender = subject.calender
    calender[0].should == @schedule1
    calender[0].date.should == 0
  end
  
  it "forward schedule 2 to 1" do
    subject.add(@schedule2)
    subject.forward
    calender = subject.calender
    calender[0].should == @schedule2
    calender[0].date.should == 1
  end
end

