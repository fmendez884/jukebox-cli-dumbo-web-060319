require 'byebug'
require 'pry'

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
  puts "/^(?=.*help)(?=.*list)(?=.*play)(?=.*exit).+/m"
end 

def play(songs)
input = gets.chomp
  if songs.include?(input)
    songs.find do |song|
      if song == input
        puts song
      end
    end
  elsif input.to_i.is_a? Integer
    if input.to_i > songs.length
      puts "Invalid input, please try again"
    else
    puts songs[((input.to_i) - 1)]
    end
  end
end