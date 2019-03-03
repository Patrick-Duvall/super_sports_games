require_relative "games"
require_relative 'event'

year = ''

until year.size == 4 && year.match(/\d\d\d\d/)
  puts "Welcome to Games, What year games would you like to access?(yyyy) format."
  year = gets.strip
end

year = year.to_i

games = Games.new(year)
command = ''
until command == 'exit'
  puts "There are currently #{games.events.length} events for this year, you can (add) an event, get the (summary) of an event, get a summary of (all) events, or (exit) this program. >>"
  command = gets.strip
  case command
  when /add/i
    puts "What is the (name) of the event you would like to add?"
    name = gets.strip
    puts "What are the ages of the competitors in this event(space seperated)"
    ages = gets.chomp.split().map(&:to_i)
    games.add_event(Event.new(name, ages))
  when /exit/i
    puts "Goodbye"
  when /summary/i
    puts "Which event would you like a summary of?"
    name_of_event = gets.chomp
    if games.events.any?{|event|event.name == name_of_event}
      event = games.events.find{|event| event = name_of_event}
      puts games.headers
      puts "#{games.event_summary(event)}"
    else
      puts "Event not Found"
    end
  when /all/i
    puts games.headers
    puts games.all_events_summary
  end
end
