songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp

  songs.each.with_index(1) do |value, index|
    puts "#{index}. #{value}"

  if response.split.include?(songs)
    songs.each {|song|}
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "list"
      list
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "exit"
      exit_jukebox
    else
      puts "Invalid entry. Please try again."
    end
  end
  exit_jukebox
end
