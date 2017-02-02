require 'rspec'

def interval seconds
  loop do
    yield
    sleep seconds
  end
end

interval 2 do
  puts "hey there"
end

# This coding exercise tests your ability to create an interval timer method in Ruby that runs a
# process at any interval passed to the method.
# Additionally, the method needs to be able to take a block.
