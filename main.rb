require './board.rb'
require './player.rb'
require './board_case.rb'

class BoardCase 
	public
	attr_accessor :coordonates, :symbol

	def initialize 

		@symbol = "-"
		# @coordonates = "coordonates"
	end

	def valeur_case 
		 #On récupère les coordonnées entrées par le joueur
		 etat_case = Board.new
		 etat_case.plateau
		 etat_case = etat_case.cases
		 
		 puts etat_case.values_at(@coordonates.to_sym)

		 
		 i = 0
		
		# jeu = Game.new
		# 
		for i in (1..10)
			if 4%2 == 0

				@symbol = "X"

			else

				@symbol = "O"
			end

		end
	end
end

class Game

	attr_accessor :case_jouee, :name_player_1, :name_player_2

	def initialize


		puts "Quel est le prénom du joueur 1 ?"
		@name_player_1 = gets.chomp

		puts "Quel est le prénom du joueur 2 ?"
		@name_player_2 = gets.chomp


	end



	def case_jouee
		i = 0

		puts "Où comptes tu jouer ?"
		
		case_jouee = BoardCase.new
		case_jouee.coordonates = gets.chomp#A1, A2...
		case_jouee.valeur_case

		
	end

end


	class Board

		attr_accessor :cases

		def plateau
			
			coordonnate = "essai"
			coordonnes_symbol = BoardCase.new
			coordonnes_symbol.symbol = "-"
			coordonnes_symbol.coordonates = "A5"
			@cases = {

				A1: coordonnes_symbol.coordonates
				
				# A2: BoardCase.new(coordonnate, "-"),
				# A3: BoardCase.new(coordonnate, "-"),
				# B1: BoardCase.new(coordonnate, "-"),
				# B2: BoardCase.new(coordonnate, "-"),
				# B3: BoardCase.new(coordonnate, "-"),
				# C1: BoardCase.new(coordonnate, "-"),
				# C2: BoardCase.new(coordonnate, "-"),
				# C3: BoardCase.new(coordonnate, "-"),

			}
		end

	end


debut_de_partie = Game.new


debut_de_partie.case_jouee