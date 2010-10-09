require "schedule"
require "calender"

@calender = Calender.new

def input_schedule
  date = nil
  loop do
    print "date(0/1/2)>>"
    date = gets.chomp
    if /[012]/ =~ date
      date = date
      break
    end
    puts "one more."
  end

  time = nil
  loop do
    print "time(1:morning/2:night)>>"
    time = gets.chomp
    if /[12]/ =~ time
      time = time
      break
    end
    puts "one more."
  end

  type = nil
  loop do
    print "type(1:stylist/2:writer)>>"
    type = gets.chomp
    if /[12]/ =~ type
      type = type
      break
    end
    puts "one more."
  end

  print "company>>"
  comp = gets.chomp

  print "name>>"
  name = gets.chomp
  
  schedule = Schedule.new(date, time, type, comp, name)
end

def show
  p @calender
end

loop do
  print ">>"
  cmd = gets.chomp
  case cmd
  when "s", "show"
    show
  when "a", "add"
    schedule = input_schedule
    @calender.add(schedule)
  when "q", "quit"
    break
  else
    puts "what? one more input."
  end
end

