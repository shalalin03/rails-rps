class ZebraController < ApplicationController
  def home
    render template: "game_templates/home"
  end

  def rock
    @player_move = "rock"
    play_game
  end

  def paper
    @player_move = "paper"
    play_game
  end

  def scissors
    @player_move = "scissors"
    play_game
  end

  private

  def play_game
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample

    @outcome = if @player_move == @comp_move
                 "tied"
               elsif win_conditions[@player_move] == @comp_move
                 "won"
               else
                 "lost"
               end

    render template: "game_templates/results"
  end

  def win_conditions
    {
      "rock" => "scissors",
      "paper" => "rock",
      "scissors" => "paper"
    }
  end
end
