require 'rspec'
require './lib/stranger'

describe StrangerAtBar do 
  let(:lady) {StrangerAtBar.new}
  let(:guy) {StrangerAtBar.new}

  it 'exists' do
    expect(lady).to be_an_instance_of(StrangerAtBar)
  end

  it 'attributes' do
    expect(lady.fucc?).to eq(false)
    expect(guy.fucc?).to eq(false)
  end

  it '#spit_game' do 
    expect(lady.fucc?).to eq(false)

    lady.spit_game_at

    expect(lady.fucc?).to eq(true)
  end

  it '#flirt' do 
    expect(guy.fucc?).to eq(false)

    guy.flirt_with

    expect(guy.fucc?).to eq(true)
  end
end