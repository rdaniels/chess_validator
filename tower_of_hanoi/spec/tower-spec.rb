require 'spec_helper'

module TowerOfHanoi
  describe Tower do

  	it 'builds the first tower' do
  		my_tower = Tower.new
  		rod1 = my_tower.order_pieces(5)
  		expect(rod1).to eq([5,4,3,2,1])
  	end

  	it 'returns index of smallest top piece' do  		
  		my_tower = Tower.new
  		rod0 = [4,2,3]
  		rod1 = [5,6,2]
  		rod2 = []
			rod = my_tower.smallest_piece(rod0.last, rod1.last, rod2.last)
			expect(rod).to eq(1)
  	end

    it 'selects mid piece' do
      my_tower = Tower.new
      rod0 = [4,2,3]
      rod1 = [5,6,2]
      rod2 = []
      rod = my_tower.next_smallest_piece(rod0.last, rod1.last, rod2.last)
      expect(rod).to eq(0)
    end

    it 'shows result' do
      my_tower = Tower.new
      my_tower.init(5)
    end
  end
end
