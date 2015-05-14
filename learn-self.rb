class S
  puts 'just started class S'
  puts self
  module M
    puts 'nested module S::M'
    puts self
  end
  puts 'back in the outer level of S'
  puts self
end

test = S.new