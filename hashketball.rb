# Write your code below game_hash
require "pry"
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored (playa_name)
  game_hash.each do |k_team_provenance, v_team_main_hash|
    v_team_main_hash[:players].each do |v_player_hash|
      if v_player_hash[:player_name] == playa_name
        return v_player_hash[:points]
      end
    end

  end
end

def shoe_size (playa_name)
  game_hash.each do |k_team_provenance, v_team_main_hash|
    v_team_main_hash[:players].each do |v_player_hash|
      if v_player_hash[:player_name] == playa_name
        return v_player_hash[:shoe]
      end
    end

  end
end

def team_colors (name)
  game_hash.each do |k_team_provenance, v_team_main_hash|
    if v_team_main_hash[:team_name] == name
      return v_team_main_hash[:colors]
    end

  end
end

def team_names
  [game_hash[:home][:team_name],game_hash[:away][:team_name]]
end


def player_numbers (team_name)
  playa_numba_array = []
  game_hash.each do |k_team_provenance, v_team_main_hash|
    if v_team_main_hash[:team_name] == team_name
      v_team_main_hash[:players].each do |v_player_hash|
        playa_numba_array << v_player_hash[:number]
      end
    end


  end
  return playa_numba_array
end

def player_stats (playa_name)
  playa_stats_yo = {}
  game_hash.each do |k_team_provenance, v_team_main_hash|
    v_team_main_hash[:players].each do |v_player_hash|
      if v_player_hash[:player_name] == playa_name
        return v_player_hash
      end
    end
  end
end

def big_shoe_rebounds
  largest_dang_shoe = 0
  rebounds = []
  game_hash.each do |k_team_provenance, v_team_main_hash|
    v_team_main_hash[:players].each do |v_player_hash|
      binding.pry
      if v_player_hash[:shoe] > lagrest_dang_shoe
        largest_dang_shoe = v_player_hash[:shoe]
        binding.pry
        rebounds << v_player_hash[:rebounds]

      end
    end

  end
  rebounds
end
