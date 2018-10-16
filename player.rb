class Player

	attr_accessor :name, :symbol

	def case_jouee

		puts "Quelle case joues tu ? A1 ? A2 ? ... C3 ?"

		case_jouee = gets.chomp

		return case_jouee
	end

end