require_relative '../loto/loto.rb'

RSpec.describe Loto do
  xit 'gets grids' do
    Loto.get_grid 
  end

  it 'give a radom flash grid' do
    expect(Loto.get_flash).not_to be_nil
    expect(Loto.get_flash).to be_a Array
    expect(Loto.get_flash.size).to equal 5
    expect(Loto.get_flash).not_to eql Loto.get_flash
  end

  it 'make a draw' do
    loto = Loto.new
    loto_draw = loto.draw
    expect(loto).to respond_to :draw
    expect(loto_draw).not_to be_nil
    expect(loto_draw).to be_a Array
    expect(loto_draw.size).to equal 5
    expect(loto_draw).to eql loto.draw
  end
  it 'validate a grid register this grid' do
     loto = Loto.new
     grid = [1,2,3,4,5]
     validated_grids = loto.validate_grid grid
     expect(validated_grids).to include grid
  end
  it 'reject grid validation after draw'
end