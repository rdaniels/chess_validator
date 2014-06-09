module TowerOfHanoi
  class Tower


		def init(number_of_pieces)
			rod0 = []
			rod1 = []
			rod2 = []

			rod0 = build_first_tower(number_of_pieces)
		end

		def build_first_tower(number_of_pieces)
			(1..number_of_pieces).to_a.reverse 
		end

		def smallest_piece(p0, p1, p2)
			p0 = 99999 if p0 == nil
			p1 = 99999 if p1 == nil
			p2 = 99999 if p2 == nil
			a = [p0, p1, p2]
			a.index(a.min)
		end
  end
end
