
class Citizen
  attr_accessor :name, :job
  def initialize(name, job)
    @name = name
    @job = job
  end
end

class ClassyClass
  def change_name(citizen_instance)
    puts "What's the new name of the citizen?"
    citizen_instance.name = gets.chomp
  end
end

#========== Test ===========

require 'stringio'

RSpec.describe ClassyClass do
  let(:stacey_instance) { described_class.new }

  describe '#change_name' do
    let(:input) { StringIO.new('Larry') }
    let(:new_deal) { Citizen.new('Mark', 'Banker') }

    it "receive user input and change citizen's name" do
      $stdin = input
      expect { stacey_instance.change_name(new_deal) }.to output(
        "What's the new name of the citizen?\n"
      ).to_stdout.and change { new_deal.name }.to('Larry')

      $stdin = STDIN
    end
  end
end
