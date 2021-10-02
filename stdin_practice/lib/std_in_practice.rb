class Hello
  attr_reader :response
  def initialize
    @response = ''
  end
  def speak
    print 'hi'
  end

  def listen
    puts "Hi! What is your name?"
    @response = $stdin.gets.chomp
    end
end
