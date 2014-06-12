module TowerOfHanoi
  class Tower

		# iterative solution
		def init(number_of_pieces)
			rod0 = []
			rod1 = []
			rod2 = []
			last_move = ""
			move_1_2 = false
			move_1_3 = false
			move_2_1 = false
			move_2_3 = false
			move_3_1 = false
			move_3_2 = false

			solution_array = order_pieces(number_of_pieces)
			rod0 = solution_array

			# first move
			(number_of_pieces.odd?) ? rod2 << rod0.last : rod1 << rod0.last
 			rod0 = rod0[0..-2]

 			# loop through all moves after first
 			begin
 				rod2 = solution_array
 			end while rod2 != solution_array

 			# results
 			puts "rod0 = " + rod0.to_s
 			puts "rod1 = " + rod1.to_s
 			puts "rod2 = " + rod2.to_s
		end

		def order_pieces(number_of_pieces)
			(1..number_of_pieces).to_a.reverse 
		end



		def valid_even_odd(a,b)
			return false if a.even? && b.even?
			return false if a.odd? && b.odd?
			true
		end




		def smallest_piece(p0, p1, p2)
			p0 = 99999 if p0 == nil
			p1 = 99999 if p1 == nil
			p2 = 99999 if p2 == nil
			a = [p0, p1, p2]
			a.index(a.min)
		end

		def next_smallest_piece(p0, p1, p2)
			p0 = 99999 if p0 == nil
			p1 = 99999 if p1 == nil
			p2 = 99999 if p2 == nil
			a = [p0, p1, p2].sort
			return 0 if a[1] == p0
			return 1 if a[1] == p1
			return 2 if a[1] == p2
		end
  end
end
