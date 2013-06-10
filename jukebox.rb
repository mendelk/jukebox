$songs = [
  "The Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "The Phoenix - Consolation Prizes"
]
# list, play, help, exit

def prompt_for_action
  puts ""
  puts 'What would you like to do next? (You can type "list", "play **song number**", "help", "exit")'
  action = gets.chomp
  args = action.split(" ")
  action = args.shift
  if args.empty?
    send action
  else
    send action, args
  end
end

def list
  $songs.each_index do |index|
    puts "#{index+1}: #{$songs[index]}"
  end
  prompt_for_action
end

def play song_index = ["1"]
  puts ""
  puts "playing #{song_index[0] << ": " << $songs[song_index[0].to_i - 1]}"
  prompt_for_action
end

def help
  puts 'RTFM'
  prompt_for_action
end

def exit
end

greeting = <<'TADA'

  _   _            ____  _____    _  _____ _   _                            _       _        ____            
 | |_| |__   ___  |  _ \| ____|  / \|_   _| | | |_ __ __ _  __ _  ___      | |_   _| | _____| __ )  _____  __
 | __| '_ \ / _ \ | | | |  _|   / _ \ | | | |_| | '__/ _` |/ _` |/ _ \  _  | | | | | |/ / _ \  _ \ / _ \ \/ /
 | |_| | | |  __/ | |_| | |___ / ___ \| | |  _  | | | (_| | (_| |  __/ | |_| | |_| |   <  __/ |_) | (_) >  < 
  \__|_| |_|\___| |____/|_____/_/   \_\_| |_| |_|_|  \__,_|\__, |\___|  \___/ \__,_|_|\_\___|____/ \___/_/\_\
                                                           |___/                                             
Welcome to the JukeBox Hero!
TADA

puts greeting
prompt_for_action