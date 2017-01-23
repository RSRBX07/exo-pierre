require 'rails_helper'

RSpec.describe Game, type: :model, focus: true do
  describe '#players' do
    it 'has players with attr_accessors' do
      expect(subject).to respond_to :players, :players=
    end
    it 'players are initialized to 0' do
      expect(subject.players).to equal(0)
    end
    it 'is unvalid when < 0' do
      game = Game.new players: -42
      expect {game.valid?}.to change {game.errors[:players].empty?}.from(true).to(false)
      # subject.players = - 1
      # expect(subject.errors[:players]).no_to be_empty
    end
  end
end
