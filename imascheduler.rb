require "schedule"
require "calender"

@calender = Calender.new

loop do
  print ">>"
  cmd = gets.chomp
  case cmd
  when "q", "quit"
    break
  when "s", "show"
    p @calender
  else
    p "one more."
  end
end

