# rspec spec/codebreaker/game_spec.rb --color --format doc

require 'spec_helper'

module Codebreaker
  describe Game do
    # double() dynamically creates test double for real STDOUT
    # .as_null_object tells it to ignore other messages
    # let() assumes before(:each) wrapper and allows for no instance variables
    let(:output) { double('output').as_null_object }
    let(:game) { Game.new(output) }

    describe '#start' do
      it 'sends a welcome message' do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it 'prompts for the first guess' do
        output.should_receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end

    describe '#guess' do
      it 'sends the mark to output' do
        game.start('1234')
        output.should_receive(:puts).with('++++')
        game.guess('1234')
      end
    end

    describe '#black or white' do
      context 'spot not found on board' do
        it 'should return blank' do
          game.black_or_white('z9','simple_board.txt').should == ''
        end
      end
      context 'spot found returns first character' do
        it 'should return b' do
          game.black_or_white('a2','simple_board.txt').should == 'b'
        end
        it 'should return w' do
          game.black_or_white('c7','simple_board.txt').should == 'w'
        end
      end
    end

    describe '#pawn' do
      it 'moves forward 1 space' do
        game.start('1234')
        output.should_receive(:puts).with('LEGAL')
        game.pawn('a2','a3')
      end
    end
  end
end