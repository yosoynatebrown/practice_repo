require 'faraday'
require 'pry'
require 'json'

class GitUser
  def initialize
    response = Faraday.get 'https://api.github.com/users/yosoynatebrown'
    @body = response.body
  end

  def number_of_followers
    @body["number_of_followers"]
  end

  def join_date
    @body["created_at"]
  end
end
