require'pry'


def game_hash
  {:home => {:team_name => "Brooklyn Nets",
            :colors => ["Black", "White"],
            :players =>  {"Alan Anderson" => {
                          :number => 0,
                          :shoe => 16,
                          :points => 22,
                          :rebounds => 12,
                          :assists => 12,
                          :steals => 3,
                          :blocks => 1,
                          :slam_dunks => 1},
 
                          "Reggie Evans" => {
                          :number => 30,
                          :shoe => 14,
                          :points => 12,
                          :rebounds => 12,
                          :assists => 12,
                          :steals => 12,
                          :blocks => 12,
                          :slam_dunks => 7},
                          
                          "Brook Lopez" => {
                          :number => 11,
                          :shoe => 17,
                          :points => 17,
                          :rebounds => 19,
                          :assists => 10,
                          :steals => 3,
                          :blocks => 1,
                          :slam_dunks => 15},
                          
                          "Mason Plumlee" => {
                          :number => 1,
                          :shoe => 19,
                          :points => 26,
                          :rebounds => 12,
                          :assists => 6,
                          :steals => 3,
                          :blocks => 8,
                          :slam_dunks => 5},
                          
                          "Jason Terry" => {
                          :number => 31,
                          :shoe => 15,
                          :points => 19,
                          :rebounds => 2,
                          :assists => 2,
                          :steals => 4,
                          :blocks => 11,
                          :slam_dunks => 1}
                     }#players
            },#team_name
            
:away => {:team_name => "Charlotte Hornets",
            :colors => ["Turquoise", "Purple"],
            :players =>  {"Jeff Adrien" => {
                          :number => 4,
                          :shoe => 18,
                          :points => 10,
                          :rebounds => 1,
                          :assists => 1,
                          :steals => 2,
                          :blocks => 7,
                          :slam_dunks => 2},
                          
                          "Bismack Biyombo" => { 
                          :number => 0,
                          :shoe => 16,
                          :points => 12,
                          :rebounds => 4,
                          :assists => 7,
                          :steals => 7,
                          :blocks => 15,
                          :slam_dunks => 10},
                          
                          "DeSagna Diop" => {
                          :number => 2,
                          :shoe => 14,
                          :points => 24,
                          :rebounds => 12,
                          :assists => 12,
                          :steals => 4,
                          :blocks => 5,
                          :slam_dunks => 5},
                          
                          "Ben Gordon" => {
                          :number => 8,
                          :shoe => 15,
                          :points => 33,
                          :rebounds => 3,
                          :assists => 2,
                          :steals => 1,
                          :blocks => 1,
                          :slam_dunks => 0},
                          
                         "Brendan Haywood" => {
                          :number => 33,
                          :shoe => 15,
                          :points => 6,
                          :rebounds => 12,
                          :assists => 12,
                          :steals => 22,
                          :blocks => 5,
                          :slam_dunks => 12}
                                   
            }#away_players
  }#away_team_name
}#team
end

def players
  game_hash[:home][:players].merge(game_hash[:away][:players])
end

def find_player(player_name)
  players.fetch(player_name)
end

def num_points_scored(player_name)
  player = find_player(player_name)
  player.fetch(:points)
end
def shoe_size(player_name)
  find_player(player_name).fetch(:shoe)
end

def team_colors(team_name)
  colors_array = []
  game_hash.each do |keys, values|
    values.each do |attributes, strings|
      if strings == team_name
        colors_array << game_hash[keys][:colors]
      end
    end
  end
  colors_array.flatten
end


def team_names
  array = []
  game_hash.collect do |keys, values|
    array << game_hash[keys][:team_name]
  end 
  array
end

def player_numbers(team_name)
  numbers_array = []
  game_hash.each do |home, contents|
    contents.each do |attributes, strings|
      if strings == team_name
        contents[:players].each do |players, stats|
          numbers_array << stats[:number]
        end
      end
    end
  end
  numbers_array
end

def player_stats(player_name)
  find_player(player_name)
end

<<<<<<< HEAD
# def shoe_stats(group)
#   shoe_hash = {}
#     group.each do |name, stat|
#       shoe_hash.merge!(name: "#{stat[:shoe]}")
#     end
#   shoe_hash
# end
def big_shoe_rebounds
  players["Mason Plumlee"].fetch(:rebounds)
end

=======
def shoe_stats(group)
  shoe_hash = {}
    group.each do |name, stat|
      shoe_hash.merge!(name: "#{stat[:shoe]}")
    end
  shoe_hash
end

players["Mason Plumlee"].fetch(:rebounds)
>>>>>>> d01161f008073b72ebb7dbf66f42e08bba8f764c
  

