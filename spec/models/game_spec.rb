require 'rails_helper'

RSpec.describe Game, type: :model, focus: true do
  describe '#players' do
    it 'has players' do
      expect(subject).to respond_to :players
    end
    it 'players are initialized to 0' do
      expect(subject.players).to equal(0)
    end
  end
end
