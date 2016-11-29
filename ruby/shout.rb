=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

# Driver code

p Shout.yell_angrily("hello")
p Shout.yell_happily("hello")

=end

module Shout
  def yell(words)
    words.upcase + "!!!"
  end

end

class Announcer
  include Shout

end

class Singer
  include Shout
end

# Driver code

announcer = Announcer.new
puts announcer.yell("Let's Get Ready to Rumble")

singer = Singer.new
puts singer.yell("Living on a Prayer")



