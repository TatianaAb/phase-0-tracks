# Release 3: Convert a Standalone Module to a Mixin.

# - Standalone Module

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + ":-]" + "!!!!!!"
#   end

# end

# - Mixin Module.

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + ":-]" + "!!!!!!"
  end

end

class Me
  include Shout
end

class Steven
  include Shout
end

me = Me.new
steven = Steven.new

p steven.yelling_happily("I won ")
p steven.yell_angrily("WT..")

p me.yell_angrily("Go away..")
p me.yelling_happily("Bravo ")

