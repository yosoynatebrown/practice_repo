require 'rspec'
require './lib/std_in_practice'
require 'stringio'



describe Hello do
  before(:each) do
    @hello = Hello.new
  end
  it 'exists' do
    @hello = Hello.new
  end
  it 'speaks' do

  expect { @hello.speak }.to output('hi').to_stdout
  end
  it 'listens' do
    $stdin = StringIO.new('John')

    allow($stdin).to receive(:gets).and_return('John')
    @hello.listen
    expect(@hello.response).to eq('John')
    $stdin = STDIN
  end
end
