#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/dlee/Development/code/jukebox-cli-nyc-web-career-021819/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  my_songs.each do |keys, values|
    puts keys
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

  puts "Please enter a song name:"
  response = gets.chomp

    my_songs.each do |keys,values|
      if response == keys
        song = keys
        system 'open ' + values
      end
    end
    if response == "list"
      list(my_songs)
    else
      puts "Invalid input, please try again"
    end
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  until response == "exit"
    if response == "list"
      list(my_songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "help"
      help
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "play"
      play(my_songs)
      puts "Please enter a command:"
      response = gets.chomp
    elsif response == "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    response = gets.chomp
  end
  end
  exit_jukebox
end
